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
-- Create date: 12/06/2017
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE usp_getGardenByCustomer
	-- Add the parameters for the stored procedure here
	@customerid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT gardens.gardencode,
	gardens.gardenId
	FROM
	gardens
	WHERE gardens.customerid =@customerid
END
GO
