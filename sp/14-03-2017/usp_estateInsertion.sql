USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_estateInsertion]    Script Date: 14-03-2017 PM 07:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 14/03/2017
-- Description:	insertion of estates
-- =============================================
ALTER PROCEDURE [dbo].[usp_estateInsertion] 
	-- Add the parameters for the stored procedure here
	@estate varchar(100),
	@estatecode varchar(50) = null,
	@companyid int,
	@lastInsertId int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[estates]
           (
			[estate]
           ,[estatecode]
           ,[companyid])
     VALUES
           (@estate,@estatecode,@companyid)

 set @lastInsertId =SCOPE_IDENTITY();

END
