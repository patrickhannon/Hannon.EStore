USE [EStore]
GO

CREATE PROCEDURE [dbo].[InsertUpdateShoppingCartItem]
	



UPDATE [dbo].[ShoppingCart]
   SET [Name] = <Name, varchar(50),>
      ,[CartCreated] = <CartCreated, datetime,>
      ,[CartUpdated] = <CartUpdated, datetime,>
 WHERE <Search Conditions,,>
GO


