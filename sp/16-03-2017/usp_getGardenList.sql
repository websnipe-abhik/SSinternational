-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 15/03/2017
-- Description:	
-- =============================================
ALTER PROCEDURE usp_getGardenList 
	-- Add the parameters for the stored procedure here
	@companyId int  
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	-- Insert statements for procedure here
	SELECT [gardens].[gardenId]
      ,[gardens].[gardenname]
      ,[gardens].[gardencode]
      ,[gardens].[customerid]
      ,[gardens].[companyid]
	  ,[customers].customername
	  ,[invoiceformat].invoiceformat
	  ,[invoiceformat].id
	  ,[gardens].gardenalias
  FROM [gardens]
  LEFT JOIN
  [customers] ON [gardens].customerid = [customers].id
  LEFT JOIN
  [invoiceformat] ON [gardens].invoiceformatid = [invoiceformat].id
  WHERE [gardens].companyid = @companyId
END
GO
--exec usp_getGardenList 1