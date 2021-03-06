USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_autoNumberGeneration]    Script Date: 04/20/2017 16:56:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ABHIK
-- Create date: 18/04/2017
-- Description:	generate auto number
-- =============================================
ALTER PROCEDURE [dbo].[usp_autoNumberGeneration] 
	-- Add the parameters for the stored procedure here
	@companyid int,
	@yearid int,
	@module varchar(50),
	@autonumber varchar(MAX) OUTPUT
	
	
AS
BEGIN
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @lastSerial int =0;
	DECLARE @nextSrlNumber int;
	DECLARE @noofdigit int;
	
	DECLARE @PREFIX varchar(50)
	DECLARE @SUFFIX varchar(50)

    -- Insert statements for procedure here
    BEGIN TRAN
	select @lastSerial= serialMaster.serialnum ,
		   @PREFIX = serialMaster.prefix,
		   @SUFFIX = serialMaster.suffix
	from serialMaster 
	WITH   (HOLDLOCK, ROWLOCK)
	where 
	serialMaster.companyId = @companyid AND serialMaster.yearId = @yearid
	AND serialMaster.module = @module;
	
	SET @nextSrlNumber = (@lastSerial + 1) --for update
	
	SELECT @noofdigit= LEN(CAST(@lastSerial as int))
	
	IF @noofdigit=1
		SET @autonumber = @PREFIX+'/'+ '0000'+ CAST(@lastSerial AS varchar(50))+'/'+@SUFFIX
	ELSE IF @noofdigit =2
		SET @autonumber = @PREFIX+'/'+ '000'+ CAST(@lastSerial AS varchar(50))+'/'+@SUFFIX
	ELSE IF @noofdigit =3
		SET @autonumber = @PREFIX+'/'+ '00'+ CAST(@lastSerial AS varchar(50))+'/'+@SUFFIX
	ELSE IF @noofdigit = 4
		SET @autonumber = @PREFIX+'/'+ '0'+ CAST(@lastSerial AS varchar(50))+'/'+@SUFFIX
	ELSE
		SET @autonumber = @PREFIX+'/'+  CAST(@lastSerial AS varchar(50))+'/'+@SUFFIX
	
	UPDATE serialMaster
	SET serialnum = @nextSrlNumber
	WHERE 
	serialMaster.companyId = @companyid AND serialMaster.yearId = @yearid
	AND serialMaster.module = @module;
				
	COMMIT TRAN
END
