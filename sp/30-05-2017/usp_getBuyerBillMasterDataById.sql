USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_getBuyerBillMasterDataById]    Script Date: 06/07/2017 12:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 07/06/2017
-- Description:	Get buyer bill master
-- =============================================
ALTER PROCEDURE [dbo].[usp_getBuyerBillMasterDataById]
	-- Add the parameters for the stored procedure here
	@billId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [billId]
      ,[billnumber]
      ,[deliverydate]
      ,[buyer]
      ,[sarkar]
      ,[doNumber]
      ,[doDate]
      ,[grandtotalamount]
      ,[companyId]
      ,[yearId]
	FROM [Billmaster]
	WHERE [Billmaster].billId =@billId;



END
