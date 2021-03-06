/****** Script for SelectTopNRows command from SSMS  ******/
USE [master]
GO

/****** Object:  Database [aspnet-EStore]    Script Date: 9/26/2018 4:19:36 PM ******/
DROP DATABASE [aspnet-EStore]
GO


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

/****** Object:  Database [aspnet-EStore]    Script Date: 9/26/2018 4:21:48 PM ******/
DROP DATABASE [aspnet-EStore]
GO

kill 55
sp_who

SELECT TOP 1000 [UserId]
      ,[RoleId]
  FROM [aspnet-EStore].[dbo].[AspNetUserRoles]

  SELECT TOP 1000 [Id]
      ,[Name]
  FROM [aspnet-EStore].[dbo].[AspNetRoles]

  SELECT TOP 1000 [Id]
      ,[UserId]
      ,[ClaimType]
      ,[ClaimValue]
  FROM [aspnet-EStore].[dbo].[AspNetUserClaims]

  SELECT TOP 1000 [Id]
      ,[Email]
      ,[EmailConfirmed]
      ,[PasswordHash]
      ,[SecurityStamp]
      ,[PhoneNumber]
      ,[PhoneNumberConfirmed]
      ,[TwoFactorEnabled]
      ,[LockoutEndDateUtc]
      ,[LockoutEnabled]
      ,[AccessFailedCount]
      ,[UserName]
  FROM [aspnet-EStore].[dbo].[AspNetUsers]