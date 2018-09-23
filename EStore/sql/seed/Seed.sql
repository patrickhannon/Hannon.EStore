USE [EStore]
GO

INSERT INTO [dbo].[ShoppingCart]
           ([Name]
           ,[UserId]
           ,[CartCreated])
     VALUES
           ('Cart'
           ,'phannon'
           ,getDate())


INSERT INTO [dbo].[ShoppingCartItem]
           ([ShoppingCartId]
           ,[Quantity]
           ,[DateCreated]
           ,[ProductId])
     VALUES
           (1
           ,2
           ,getdate()
           ,1)
GO

