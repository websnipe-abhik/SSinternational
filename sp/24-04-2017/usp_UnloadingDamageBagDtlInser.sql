USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_UnloadingDamageBagDtlInser]    Script Date: 05/03/2017 11:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[usp_UnloadingDamageBagDtlInser] 
	-- Add the parameters for the stored procedure here
	@unloadingDtlId int,
	@damageTypeId int ,
	@noofpackage decimal(12,2) = null,
	@net decimal(12,2) = null,
	@serial int = null
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--DELETE FROM damageBagDtl WHERE damageBagDtl.unloadingDtlId = @unloadingDtlId
    -- Insert statements for procedure here
	INSERT INTO [damageBagDtl]
           ([damageTypeId]
           ,[noofpackage]
           ,[net]
           ,[unloadingDtlId]
           ,[serial])
     VALUES
           (@damageTypeId
           ,@noofpackage
           ,@net
           ,@unloadingDtlId
           ,@serial)
END
