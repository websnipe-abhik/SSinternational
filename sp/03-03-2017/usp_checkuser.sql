USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_checkuser]    Script Date: 06-03-2017 PM 01:53:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[usp_checkuser]
	-- Add the parameters for the stored procedure here
	@login varchar(100),
	@password varchar(100),
	@userid int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @hshpassword varchar(100);

	 set @hshpassword = HASHBYTES('MD5',@password) ; 
	 set @userid =0;

	 SELECT @userid=[users].[userid] from [users] where [users].[password]=@hshpassword AND users.[login]=@login;
    -- Insert statements for procedure here
	print @userid;
END
