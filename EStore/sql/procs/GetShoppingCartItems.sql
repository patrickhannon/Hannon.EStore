USE [EStore]
GO

/****** Object:  StoredProcedure [dbo].[GetEmployees]    Script Date: 9/23/2018 7:12:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
/*
USE [EStore]
GO

DECLARE	@return_value int
EXEC	@return_value = [dbo].[GetShoppingCartItems]
		@UserId = N'phannon'
SELECT	'Return Value' = @return_value
GO
*/
ALTER PROCEDURE [dbo].[GetShoppingCartItems]  
	@UserId varchar(30) = Null
AS  
    SET NOCOUNT ON;  
    SELECT sc.[Id]
      ,[Name]
      ,[UserId]
      ,[CartCreated]
      ,[CartUpdated]
	  ,sci.Id As ShoppingCartItemId
	  ,sci.ProductId As ProductId
	  ,sci.Quantity As Qty
	  ,sci.ShoppingCartId 
  FROM [EStore].[dbo].[ShoppingCart] sc 
  Inner JOIN [EStore].[dbo].[ShoppingCartItem] sci
  On sci.ShoppingCartId = sc.Id
  Where sc.UserId = ISNULL(@UserId, sc.UserId)

GO


