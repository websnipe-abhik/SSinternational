USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_getFloorList]    Script Date: 04/25/2017 17:36:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 24/03/2017
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[usp_getFloorList] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT [floors].[floorId],[floors].[floorName],[floors].[warehouseId],
	[Warehouses].Name
	FROM [floors]
	INNER JOIN
	[Warehouses] ON [floors].[warehouseId] = [Warehouses].WarehouseId
	ORDER BY [floors].[floorName]
   
END
