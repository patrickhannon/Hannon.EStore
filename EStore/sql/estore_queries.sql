/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ProductId]
      ,[ProductName]
      ,[Description]
      ,[ImagePath]
      ,[UnitPrice]
      ,[CategoryId]
      ,[QuantityInStock]
      ,[Sku]
      ,[Weight]
      ,[Manufacturer]
  FROM [ESTORE_4c615618e24c4b46b16a0b8aa95d04e0].[dbo].[Products]

  USE [master]
GO

/****** Object:  Database [ESTORE_e28301dcf6884b799fd43d516256ba15]    Script Date: 9/24/2018 9:05:18 AM ******/
DROP DATABASE [ESTORE_e28301dcf6884b799fd43d516256ba15]
GO

kill 54
sp_who