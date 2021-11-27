GO
use master
GO
DROP DATABASE [Library Management System]

GO
CREATE DATABASE [Library Management System]

GO
use [Library Management System]

CREATE TABLE Admin
(
	[Admin ID] INT FOREIGN KEY REFERENCES Users([User ID]),
	[Admin Name] VARCHAR(20) NOT NULL,
	[Picture Directory] VARCHAR(50),
	Age INT NOT NULL,
	CNIC VARCHAR(15) UNIQUE,
	[Phone Number] VARCHAR(12)
)

CREATE TABLE Users
(
	[User ID] INT PRIMARY KEY,
	Username VARCHAR(20) NOT NULL,
	Password VARCHAR(20) NOT NULL,
	Age INT,
	CNIC VARCHAR(15) UNIQUE,
	[Phone Number] VARCHAR(13),
	[Picture Directory] VARCHAR(30),
	[User Type] VARCHAR(30) CHECK([User Type] IN ('Admin', 'Student', 'Teacher')) NOT NULL
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
CREATE TABLE Book (
	/*
		Book_ID, Book_Name, Book_Type, Author Name, Category
	*/
	[Book ID] INT NOT NULL PRIMARY KEY,
	[Book Name] VARCHAR(20) NOT NULL,
	[Book Type] VARCHAR(20) CHECK([Book Type] IN ('Premium', 'Regular')),
	[Author Name] VARCHAR(30) NOT NULL,
	Category VARCHAR(20),
)
CREATE TABLE Fine
(
	
	[Fine ID] INT NOT NULL PRIMARY KEY,
	[Student ID] INT FOREIGN KEY REFERENCES Student([Student ID]),
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

CREATE TABLE [Room Booking] 
(

	[Booking ID] INT NOT NULL PRIMARY KEY,
	[User ID] INT FOREIGN KEY REFERENCES Users([User ID]),
	[Room ID] INT FOREIGN KEY REFERENCES Rooms([Room ID]),
	[Start Time] DATE,
	[End Time] DATE,
	[Booking Date] DATE,
)
CREATE TABLE Rooms
(
		[Room ID] INT PRIMARY KEY,
		[Capacity] INT,
	
)
CREATE TABLE Student
(
		[Student ID] INT NOT NULL FOREIGN KEY REFERENCES Users([User ID]),
		[Student Name] VARCHAR(20),
		[Student Age] INT,
		[Student CNIC] VARCHAR(15) UNIQUE,
		[Phone Number] VARCHAR(13),
		[Picture Directory] VARCHAR(30),
		PRIMARY KEY([STUDENT ID])
)

CREATE TABLE Teacher
(
		[Teacher ID] INT FOREIGN KEY REFERENCES Users([User ID]),
		[Teacher Name] VARCHAR(30),
		[Teacher Age] INT,
		[Teacher CNIC] VARCHAR(15) UNIQUE,
		[Teacher Phone Number] VARCHAR(13),
		[Picture Directory] VARCHAR(20),
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
		SET @FLAG = (
						SELECT Users.[User Type] FROM Users WHERE Users.Username= @USER_NAME AND Users.Password= @PASSWORD
		)
		PRINT('User Logged In')
	END
	ELSE
	BEGIN
		SET @FLAG = NULL
		PRINT('USER DOES NOT EXIST')
	END
END
GO

--Stored Procedure for Sign Up of Teacher
CREATE PROCEDURE SIGN_UP
 @USER_ID INT,
 @USER_NAME_ VARCHAR(30),
 @PASSWORD VARCHAR(20),
 @USER_AGE INT,
 @USER_CNIC VARCHAR(30),
 @USER_PHONE_NUM VARCHAR(13),
 @USER_PICTURE_DIRECTORY VARCHAR(13),
 @SIGNUP_USER_TYPE VARCHAR(20),
 @FLAG INT OUTPUT
 AS
 BEGIN
	IF EXISTS ( SELECT * FROM Users
				WHERE Users.[User ID]=@USER_ID AND Users.CNIC=@USER_CNIC)
	BEGIN
		SET @FLAG = 0
		PRINT ('User Already Exists')
	END
	
	ELSE
	
	BEGIN
		INSERT INTO Users
		Values (@USER_ID, @USER_NAME, @PASSWORD, @USER_AGE, @USER_CNIC, @USER_PHONE_NUM, @USER_PICTURE_DIRECTORY, @SIGNUP_USER_TYPE)
		SET @FLAG = 1
	END
 END
 GO