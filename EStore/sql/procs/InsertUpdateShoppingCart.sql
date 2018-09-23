USE [EmployeeAdmin]
GO

/****** Object:  StoredProcedure [dbo].[InsertUpdateEmployee]    Script Date: 9/23/2018 7:12:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsertUpdateShoppingCart]
	@Id int,
	@UserId int, 
    @Title varchar(10),
    @FirstName varchar(30),
    @LastName varchar(30),
    @UserName varchar(30),
    @Language varchar(30),
    @Password varchar(30),
    @Email varchar(100),
    @CellPhone varchar(30),
    @CreatedDate datetime,
    @LastModifiedDate datetime = null
AS  
    SET NOCOUNT ON;  
    
	IF EXISTS (SELECT * FROM [dbo].[ShoppingCart] WHERE [UserId] =@UserId) 
	BEGIN
		--if exists then check for item in it's shopping cart 
	END
	
	IF EXISTS (SELECT * FROM [dbo].[Employee] WHERE [Id] =@Id) 
	BEGIN
	UPDATE [dbo].[Employee]
		SET [UserId] = @UserId,
		  [Title] = @Title,
		  [FirstName] = @FirstName,
		  [LastName] = @LastName, 
		  [UserName] = @UserName, 
		  [Language] = @Language, 
		  [Password] = @Password, 
		  [Email] = @Email, 
		  [CellPhone] = @CellPhone, 
		  [CreatedDate] = @CreatedDate,
		  [LastModifiedDate] = @LastModifiedDate
		WHERE [Id] = @Id
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[Employee]
           ([UserId]
           ,[Title]
           ,[FirstName]
           ,[LastName]
           ,[UserName]
           ,[Language]
           ,[Password]
           ,[Email]
           ,[CellPhone]
           ,[CreatedDate]
           ,[LastModifiedDate])
     VALUES
           (@UserId, 
           @Title, 
           @FirstName,
           @LastName,
           @UserName, 
           @Language, 
           @Password, 
           @Email, 
           @CellPhone, 
           @CreatedDate,
           @LastModifiedDate)
	END


GO


