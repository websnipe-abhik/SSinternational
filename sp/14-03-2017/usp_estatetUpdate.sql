USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_estatetUpdate]    Script Date: 14-03-2017 PM 08:09:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 14/03/2016
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[usp_estatetUpdate] 
	-- Add the parameters for the stored procedure here
	@estateId int,
	@estate varchar(100),
	@estatecode varchar(50) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
  UPDATE [dbo].[estates]
   SET 
       [estate] = @estate
      ,[estatecode] = @estatecode
      
   WHERE [estateId]=@estateId;
END
