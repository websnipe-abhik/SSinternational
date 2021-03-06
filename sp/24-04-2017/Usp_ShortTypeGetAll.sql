USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[Usp_ShortTypeGetAll]    Script Date: 04/27/2017 13:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Get All ShortType
-- =============================================
ALTER PROCEDURE [dbo].[Usp_ShortTypeGetAll] 
	-- Add the parameters for the stored procedure here
	-- @CompanyId int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [ShortId]
      ,[ShortCode]
      ,[ShortName]
      ,[CompanyId]
  FROM [dbo].[ShortTypes] ORDER BY [ShortTypes].[ShortCode]
End
