GO
use master
GO
DROP DATABASE [Library Management System]

GO
CREATE DATABASE [Library Management System]

GO
use [Library Management System]

CREATE TABLE Users
(
	[User ID] INT PRIMARY KEY IDENTITY(1, 1),
	Username VARCHAR(30) NOT NULL,
	Email VARCHAR(30) NOT NULL,
	[Password] VARCHAR(50) NOT NULL,
	Age INT,
	CNIC VARCHAR(15) UNIQUE,
	[Phone Number] VARCHAR(13),
	[Picture Directory] VARCHAR(500),
	[User Type] VARCHAR(30) CHECK([User Type] IN ('Admin', 'Student', 'Teacher')) NOT NULL
)
INSERT INTO USERS
VALUES	('Haroon Tahir', 'l192392@lhr.nu.edu.pk', 'zxasqw123edc', 20, '32102-4989292-1', '0311-1288814', NULL, 'Admin'),
		('Ahmed Khan', 'l191014@lhr.nu.edu.pk', 'zxasqw123edc', 22, '54400-4913171-3', '0321-3758938', NULL, 'Admin')

SELECT * FROM USERS

CREATE TABLE Book
(
	/*
		Book_ID, Book_Name, Book_Type, Author Name, Category
	*/
	[Book ID] INT NOT NULL PRIMARY KEY,
	[Book Name] VARCHAR(20) NOT NULL,
	[Book Type] VARCHAR(20) CHECK([Book Type] IN ('Premium', 'Regular')),
	[Author Name] VARCHAR(30) NOT NULL,
	Category VARCHAR(20),
)
CREATE TABLE [Book Issue] 
(
    [User ID] INT FOREIGN KEY REFERENCES Users([User ID]),
	[Book ID] INT FOREIGN KEY REFERENCES Book([Book ID]),
	[Issue Date] DATE,
	[Due Date] DATE,
	/*
		User_ID, Book_ID, Issue_Date, Due_Date
	*/
)
CREATE TABLE Fine (	
	[Fine ID] INT NOT NULL PRIMARY KEY,
	[Student ID] INT FOREIGN KEY REFERENCES Users([User ID]),
	[Book ID] INT FOREIGN KEY REFERENCES Book([Book ID]),
	[Return Date] DATE,
	Fine INT,
)
CREATE TABLE Information 
(
	[Info ID] INT PRIMARY KEY NOT NULL,
	[User ID] INT FOREIGN KEY REFERENCES Users([User ID]),
	[Book ID] INT FOREIGN KEY REFERENCES Book([Book ID]),
	
)
CREATE TABLE Membership
(
	[Membership ID] INT NOT NULL PRIMARY KEY,
	[User ID] INT FOREIGN KEY REFERENCES Users([User ID]),
	[Start Date] DATE,
	[End Date] DATE,
)

CREATE TABLE Rooms (
		[Room ID] INT PRIMARY KEY,
		[Capacity] INT,
)
CREATE TABLE [Room Booking] 
(
	[Booking ID] INT NOT NULL PRIMARY KEY,
	[User ID] INT FOREIGN KEY REFERENCES Users([User ID]),
	[Room ID] INT FOREIGN KEY REFERENCES Rooms([Room ID]),
	[Start Time] DATE,
	[End Time] DATE,
	[Booking Date] DATE,
)
--Stored procedure for Login
GO
CREATE PROCEDURE LOG_IN 
	@USER_NAME VARCHAR(30),
	@PASSWORD VARCHAR(30),
	@FLAG VARCHAR(30) OUTPUT
AS
BEGIN
	IF EXISTS(SELECT* FROM Users WHERE Users.Username= @USER_NAME AND Users.Password= @PASSWORD)
	BEGIN
		SET @FLAG = (SELECT Users.[User Type] FROM Users WHERE Users.Username= @USER_NAME AND Users.Password= @PASSWORD)
		--PRINT('User Logged In')
	END
	ELSE
	BEGIN
		SET @FLAG = NULL
		--PRINT('USER DOES NOT EXIST')
	END
END
GO

--Stored Procedure for Sign Up of Teacher
GO
CREATE PROCEDURE SIGN_UP
@USER_NAME VARCHAR(30),
@Email VARCHAR(30),
@PASSWORD VARCHAR(20),
@USER_AGE INT,
@USER_CNIC VARCHAR(30),
@USER_PHONE_NUM VARCHAR(13),
@USER_PICTURE_DIRECTORY VARCHAR(13),
@SIGNUP_USER_TYPE VARCHAR(20),
@FLAG INT OUTPUT
AS
BEGIN
	IF EXISTS (SELECT * FROM Users WHERE Users.CNIC=@USER_CNIC OR Users.Email=@Email)
	BEGIN
		SET @FLAG = 0
		--PRINT ('User Already Exists')
	END
	
	ELSE
	BEGIN
		INSERT INTO Users
		Values (@USER_NAME, @Email, @PASSWORD, @USER_AGE, @USER_CNIC, @USER_PHONE_NUM, @USER_PICTURE_DIRECTORY, @SIGNUP_USER_TYPE)
		SET @FLAG = 1
	END
END
GO



--Procedure to add a new Users
CREATE PROCEDURE Add_admin
	@User_ID INT,
	@Username VARCHAR(30),
	@Email VARCHAR(30),
	@Password VARCHAR(50),
	@Age INT,
	@CNIC VARCHAR(15),
	@Phone_Number VARCHAR(13),
	@Picture_Directory VARCHAR(500),
	@User_Type VARCHAR(30),
	@FLAG INT OUTPUT
AS
BEGIN
	IF EXISTS(SELECT* FROM Users 
	where Users.UserName= @Username AND Users.CNIC = @CNIC)
	BEGIN
		SET @FLAG=0
		PRINT('Admin Already Exists')
	END
	ELSE
	BEGIN
		INSERT INTO Users
		VALUES(@User_ID, @Username, @Email, @Password, @Age, @CNIC, @Phone_Number, @Picture_Directory, @User_Type)
		SET @FLAG = 1
		PRINT('Thank you! Admin has been added')
	END
END
GO

--Procedure to Remove a Users
CREATE PROCEDURE Remove_admin
	@Username VARCHAR(30),
	@CNIC VARCHAR(15),
	@FLAG INT OUTPUT
AS
BEGIN
	IF EXISTS(SELECT* FROM Users 
	where Users.UserName= @Username AND Users.CNIC = @CNIC)
	BEGIN
		Delete From Users
		where Users.Username = @Username AND Users.CNIC= @CNIC
		SET @FLAG=1
		PRINT('Admin Removed') 
	END
	ELSE
	BEGIN
		SET @FLAG = 0
		PRINT('Admin Does not Exists')
	END
END
GO


--Procedure to Add a Book
CREATE PROCEDURE AddBook 
	@Book_ID INT,
	@Book_name VARCHAR(20),
	@Book_Type VARCHAR(20),
	@Author_Name VARCHAR(30),
	@Category VARCHAR(20),
	@FLAG INT OUTPUT
AS
BEGIN
	IF EXISTS(SELECT* FROM Book 
	where Book.[BOOK ID]=@Book_ID)
	BEGIN
		SET @FLAG=0
		PRINT('Book Already Exists')
	END
	ELSE
	BEGIN
		INSERT INTO Book
		VALUES(@Book_ID, @Book_name, @Book_Type, @Author_Name, @Category)
		SET @FLAG = 1
		PRINT('Thank you! Your Book has been added')
	END
END
GO


--Procedure to Remove a Book
CREATE PROCEDURE RemoveBook 
	@Book_ID INT,
	@FLAG INT OUTPUT
AS
BEGIN
	IF EXISTS(SELECT* FROM Book 
	where Book.[BOOK ID]=@Book_ID)
	BEGIN
		SET @FLAG=1
		Delete From Book
		Where Book.[Book ID]= @Book_ID
	END
	ELSE
	BEGIN
		SET @FLAG =0
		PRINT('The Book you are trying to remove does not exist')
	END
END
GO


--Procedure to Book a Room
CREATE PROCEDURE BookRoom 
	@Booking_ID INT,
	@User_ID INT,
	@Room_ID VARCHAR(30),
	@Start_time DATE,
	@End_time DATE,
	@Book_Date DATE,
	@FLAG INT OUTPUT
AS
BEGIN
	IF EXISTS(SELECT* FROM [Room Booking] 
	JOIN ROOMS ON ROOMS.[ROOM ID] = [ROOM BOOKING].[ROOM ID]
	WHERE [ROOM BOOKING].[ROOM ID]= @Room_ID)
	BEGIN
		SET @FLAG=0
		PRINT('Room Already Booked')
	END
	ELSE
	BEGIN
		INSERT INTO [ROOM BOOKING]
		VALUES(@Booking_ID, @User_ID, @Room_ID, @Start_time, @End_time,@Book_Date)
		SET @FLAG = 1
		PRINT('Thank you for waiting! Your room is Booked')
	END
END
GO
--Procedure to Free a Room 
CREATE PROCEDURE FreeRoom 
	@Room_ID VARCHAR(30),	
	@FLAG INT OUTPUT
AS
BEGIN
	IF EXISTS(SELECT* FROM [Room Booking] 
	JOIN ROOMS ON ROOMS.[ROOM ID] = [ROOM BOOKING].[ROOM ID]
	WHERE [ROOM BOOKING].[ROOM ID]= @Room_ID)
	BEGIN
		DELETE FROM [ROOM BOOKING] 
		WHERE [ROOM BOOKING].[ROOM ID] = @Room_ID
		SET @FLAG=1
		PRINT('Room Freed')
	END
	ELSE
	BEGIN
		SET @FLAG = 0
		PRINT('Room is already not booked or it does not exists')
	END
END
GO


--Procedure to Update a Book
CREATE PROCEDURE UpdateBook 
	@Book_ID INT,
	@Book_name VARCHAR(20),
	@Book_Type VARCHAR(20),
	@Author_Name VARCHAR(30),
	@Category VARCHAR(20)
AS
BEGIN
	IF EXISTS(SELECT* FROM Book 
	where Book.[BOOK ID]=@Book_ID)
	BEGIN
		IF NOT EXISTS (SELECT * FROM Book 
		where Book.[Book Name] = @Book_Name AND Book.[Book Type]= @Book_Type AND Book.[Author Name]= @Author_Name AND Book.Category = @Category)
		BEGIN
			Update Book
			Set 
			Book.[Book Name] =@Book_name,
			Book.[Book Type]= @Book_Type,
			Book.[Author Name]= @Author_Name,
			Book.Category = @Category
			PRINT('Your Book has successfully been updated')
		END
	END
	ELSE
	BEGIN
		PRINT('The Book you are trying to update does not exist')
	END
END
GO





