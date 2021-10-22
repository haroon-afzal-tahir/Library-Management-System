USE [Library Management System]


CREATE TABLE Admin (
	/*
		Admin_ID, Name, Picture_Path, Age, CNIC, Phone Number
	*/
	[Admin ID] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[Admin Name] VARCHAR(20) NOT NULL,
	[Picture Directory] VARCHAR(50),
	Age INT NOT NULL,
	CNIC VARCHAR(15) UNIQUE,
	[Phone Number] VARCHAR(12)
)