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
-- Author:		Abhik Ghosh
-- Create date: 09/05/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE usp_getArrivalDetailById
	-- Add the parameters for the stored procedure here
	@arrivalMasterId int,@arrivalDetailId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id]
      ,[arrivalDetail].arrivalId
      ,[invoice]
      ,[grade]
      ,[package]
      ,[yearofproduction]
      ,[pkgsrlfrm]
      ,[pkgsrlto]
      ,[invoicequantity]
      ,[receivequantity]
      ,[gross]
      ,[tare]
      ,[net]
      ,[floorId]
  FROM [arrivalDetail]
  
  WHERE arrivalDetail.arrivalId =@arrivalMasterId 
  AND arrivalDetail.id = @arrivalDetailId
END
GO