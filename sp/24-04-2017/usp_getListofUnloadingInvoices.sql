USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_getListofUnloadingInvoices]    Script Date: 05/03/2017 16:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[usp_getListofUnloadingInvoices]
	-- Add the parameters for the stored procedure here
	@unloadingMasterId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT [unloadingdetail].[id]
      ,[unloadingdetail].[unloadingmasterid]
      ,[unloadingdetail].[invoice]
      ,[unloadingdetail].[grade]
      ,[unloadingdetail].[package]
      ,[unloadingdetail].[yearofproduction]
      ,[unloadingdetail].[pkgsrlfrm]
      ,[unloadingdetail].[pkgsrlto]
      ,[unloadingdetail].[invoicequantity]
      ,[unloadingdetail].[receivequantity]
      ,[unloadingdetail].[gross]
      ,[unloadingdetail].[tare]
      ,[unloadingdetail].[net]
      ,[unloadingdetail].[floorId]
      ,[floors].floorName
      ,[unloadingmaster].unloadingnumber
      ,Convert(VARCHAR(10),CONVERT(date,unloadingmaster.receiptdate,106),103)as receiptdate
      
      
  FROM [unloadingdetail]
  INNER JOIN
  unloadingmaster ON unloadingmaster.id = unloadingdetail.unloadingmasterid
  LEFT JOIN
  floors ON [unloadingdetail].floorId = floors.floorId
  WHERE unloadingmaster.id = @unloadingMasterId



	
END
