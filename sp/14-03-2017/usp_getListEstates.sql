USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_getListEstates]    Script Date: 14-03-2017 PM 07:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 14/03/2017
-- Description:	get List of Estates
-- =============================================
ALTER PROCEDURE [dbo].[usp_getListEstates] 
	-- Add the parameters for the stored procedure here
	@companyid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


		SELECT [estateId]
			  ,[estate]
			  ,[estatecode]
			  ,[companyid]
		  FROM [dbo].[estates]
		  WHERE [dbo].[estates].[companyid] =@companyid


	--- exec usp_getListEstates 1
END
