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
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Insert Package
-- =============================================
Alter PROCEDURE Usp_PackegeInsert 
	-- Add the parameters for the stored procedure here
	@Code varchar(50),
    @Description varchar(250),
    
    @ComapnyId int,
    @PackageId int Out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Packages]
           ([Code]
           ,[Description]
           ,[IsActive]
           ,[ComapnyId])
     VALUES
           (@Code
           ,@Description
           ,1
           ,@ComapnyId)
           
           set @PackageId=SCOPE_IDENTITY();
END
GO
