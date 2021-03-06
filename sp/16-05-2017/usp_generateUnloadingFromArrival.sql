USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_generateUnloadingFromArrival]    Script Date: 05/16/2017 18:08:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 10/05/2017
-- Description:	Generate arrival automatically from unloading
-- =============================================
ALTER PROCEDURE [dbo].[usp_generateUnloadingFromArrival]
	-- Add the parameters for the stored procedure here
	@unloadingMasterId int,
	@arrivalnumber varchar(100),
	@arrivalDate date
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	DECLARE @arrivalMasterId int
	DECLARE @arrivalDetailId int
	
	DECLARE @unldDtlId int
	DECLARE @invoice varchar(100)
	DECLARE @grade varchar(100)
	DECLARE @package decimal(12,2) 
	DECLARE @yearofproduction varchar(100)
    DECLARE @pkgsrlfrm int
	DECLARE @pkgsrlto int
	DECLARE @invoicequantity decimal(12,2)
	DECLARE @receivequantity decimal(12,2)
	DECLARE @gross decimal(12,2)
	DECLARE @tare decimal(12,2)
	DECLARE @net decimal(12,2)
    DECLARE @floorId int
    DECLARE @gardenCode varchar(100)
    
    DECLARE @companyId int
	DECLARE @yearId int
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	BEGIN TRY
		BEGIN TRANSACTION 
		-- fetch garden code
		SELECT @gardenCode = gardens.gardencode FROM unloadingmaster
		INNER JOIN
		gardens ON unloadingmaster.gardenid = gardens.gardenId
		WHERE unloadingmaster.id =@unloadingMasterId
		
		--company
	SELECT @companyId = unloadingmaster.companyid from unloadingmaster WHERE unloadingmaster.id =@unloadingMasterId
	-- year
	SELECT @yearId = unloadingmaster.yearid from unloadingmaster WHERE unloadingmaster.id =@unloadingMasterId
		
		-- Arrival master insertion
		INSERT INTO [ssinternational_data].[dbo].[arrivalMaster]
           ([unloadingId]
           ,[arrivalNumber]
           ,[dateofarrival]
           ,[lotnumber]
           ,[gardenid]
           ,[carrier]
           ,[lorrynum]
           ,[brokerid]
           ,[warehouseid]
           ,[cnno]
           ,[cndate]
           ,[gpno]
           ,[wbno]
           ,[companyid]
           ,[yearid])
     
    SELECT [id]
      ,@arrivalnumber
      ,@arrivalDate
      ,[lotnumber]
      ,[gardenid]
      ,[carrier]
      ,[lorrynum]
      ,[brokerid]
      ,[warehouseid]
      ,[cnno]
      ,[cndate]
      ,[gpno]
      ,[wbno]
      ,[companyid]
      ,[yearid]
  FROM [unloadingmaster]
  WHERE [unloadingmaster].id=@unloadingMasterId
	
  SET @arrivalMasterId =SCOPE_IDENTITY();
  ---Arrival master insert
  
  DECLARE unloadingDetail CURSOR FOR
  SELECT 
	   [id]	
       ,[invoice]
      ,[grade]
      ,[package]
      ,[yearofproduction]
      ,[pkgsrlfrm]
      ,[pkgsrlto]
      ,[invoicequantity]
      ,[receivequantity]
      ,[gross]
      ,[tare]
      ,[net]
      ,[floorId]
  FROM [unloadingdetail]
  WHERE [unloadingmasterid]=@unloadingMasterId	
-- 
  OPEN unloadingDetail
  FETCH NEXT FROM unloadingDetail INTO @unldDtlId, 
	@invoice,@grade,@package,@yearofproduction,@pkgsrlfrm,@pkgsrlto,@invoicequantity,@receivequantity,@gross,
	@tare,@net,@floorId
  WHILE @@FETCH_STATUS = 0
  BEGIN
	--arrival detail insertion
	INSERT INTO [ssinternational_data].[dbo].[arrivalDetail]
           ([arrivalId]
           ,[invoice]
           ,[grade]
           ,[package]
           ,[yearofproduction]
           ,[pkgsrlfrm]
           ,[pkgsrlto]
           ,[invoicequantity]
           ,[receivequantity]
           ,[gross]
           ,[tare]
           ,[net]
           ,[floorId])
     VALUES(@arrivalMasterId,@invoice,@grade,@package,@yearofproduction,@pkgsrlfrm,@pkgsrlto,
			@invoicequantity,@receivequantity,@gross,@tare,@net,@floorId
     )
	set @arrivalDetailId =SCOPE_IDENTITY()
	
	--damage bag
	INSERT INTO [ssinternational_data].[dbo].[arrivalDamageBags]
           ([damageTypeId]
           ,[noofpackage]
           ,[net]
           ,[arrivalDtlId]
           ,[serial])
	SELECT 
		  [damageTypeId]
		  ,[noofpackage]
		  ,[net]
		  ,@arrivalDetailId
		  ,[serial]
   FROM [damageBagDtl] WHERE damageBagDtl.unloadingDtlId =@unldDtlId
   
   
   --shortage bag
   
   INSERT INTO [ssinternational_data].[dbo].[arrivalShortBags]
           ([shortTypeId]
           ,[shortpackage]
           ,[shortPkgNet]
           ,[arrivalDtlId]
           ,[serial])
     SELECT 
       [shortTypeId]
      ,[shortpackage]
      ,[shortPkgNet]
      ,@arrivalDetailId
      ,[serial]
  FROM [shortBagDetail] WHERE [shortBagDetail].unloadingDetailId =@unldDtlId
   
   -- Insertion to stock ledger
   INSERT INTO [ssinternational_data].[dbo].[StockLedger]
           ([TransactionNumber]
           ,[TransactionId]
           ,[TransactionDate]
           ,[TransType]
           ,[Invoice]
           ,[Grade]
           ,[Garden]
           ,[CropYr]
           ,[net]
           ,[StockIn]
           ,[StockOut]
           ,[ParentId],companyId,yearId)
     VALUES
           (@arrivalnumber
           ,@arrivalDetailId
           ,@arrivalDate
           ,'AR'
           ,@invoice
           ,@grade
           ,@gardenCode
           ,@yearofproduction
           ,@net
           ,@receivequantity
           ,NULL
           ,NULL,@companyId,@yearId)
   
   
  
   FETCH NEXT FROM unloadingDetail INTO 
	@unldDtlId,@invoice,@grade,@package,@yearofproduction,@pkgsrlfrm,@pkgsrlto,@invoicequantity,@receivequantity,@gross,
	@tare,@net,@floorId
  END
  
  CLOSE unloadingDetail
  DEALLOCATE unloadingDetail
--		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
END
