USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_unloadDetailInsert]    Script Date: 04/29/2017 19:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 28/04/2017
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[usp_unloadDetailInsert]
	-- Add the parameters for the stored procedure here
	
	@unloadingmasterid int,
	@invoice  varchar(100),
	@grade varchar(100)=NULL,
	@package int=NULL,
	@yearofproduction varchar(100)=NULL,
	@pkgsrlfrm int,
	@pkgsrlto  int,
	@invoicequantity decimal(12,2),
	@receivequantity decimal(12,2),
	@gross decimal(12,2),
	@tare decimal(12,2)=NULL,
	@net decimal(12,2),
	@floorId int=NULL,
	@lastInsertId int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [unloadingdetail]
           ([unloadingmasterid]
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
     VALUES
           (@unloadingmasterid,
			@invoice,
			@grade,
			@package,
			@yearofproduction,
			@pkgsrlfrm,
			@pkgsrlto,
			@invoicequantity,
			@receivequantity,
			@gross,
			@tare,
			@net,
			@floorId)


 set @lastInsertId = SCOPE_IDENTITY();
	
	
	---
END
