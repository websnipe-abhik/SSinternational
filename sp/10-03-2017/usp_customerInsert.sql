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
-- Author:		Abhik
-- Create date: 10-03-2017
-- Description:	Insertion
-- =============================================
ALTER PROCEDURE usp_customerInsert 
	-- Add the parameters for the stored procedure here
	@customername varchar(100),
	@customerphone varchar(50),
	@customeraddress varchar(100)  = NULL , -- NULL default value,
	@companyid int,
	@lastInsertId int output

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [customers]
           ([customername]
           ,[customerphone]
           ,[customeraddress]
           ,[companyid])
     VALUES
           (@customername,@customerphone,@customeraddress,@companyid);
	SET @lastInsertId = SCOPE_IDENTITY();
END
GO
