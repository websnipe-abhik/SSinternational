USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[Usp_WarehouseGetAllByCompanyId]    Script Date: 03/17/2017 14:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Warehouse Get All  By CompanyId
-- =============================================
ALTER PROCEDURE [dbo].[Usp_WarehouseGetAllByCompanyId]
	-- Add the parameters for the stored procedure here
@CompanyId int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [WarehouseId]
      ,[Name]
      ,[Description]
      ,[CompanyId]
      ,[IsActive]
  FROM [dbo].[Warehouses]
  Where CompanyId=@CompanyId 
END
