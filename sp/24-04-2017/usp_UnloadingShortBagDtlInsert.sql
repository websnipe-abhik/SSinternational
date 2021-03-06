USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_UnloadingShortBagDtlInsert]    Script Date: 05/03/2017 11:37:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[usp_UnloadingShortBagDtlInsert] 
	-- Add the parameters for the stored procedure here
	@unloadingDetailId int,
	@shortTypeId int,
	@shortpackage decimal(12,2)=null,
	@shortPkgNet decimal(12,2)=null,
	@serial int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
--DELETE FROM shortBagDetail WHERE shortBagDetail.unloadingDetailId =@unloadingDetailId

    -- Insert statements for procedure here
	INSERT INTO [ssinternational_data].[dbo].[shortBagDetail]
           ([shortTypeId]
           ,[shortpackage]
           ,[shortPkgNet]
           ,[unloadingDetailId]
           ,[serial])
     VALUES
           (@shortTypeId
           ,@shortpackage
           ,@shortPkgNet
           ,@unloadingDetailId
           ,@serial)



END
