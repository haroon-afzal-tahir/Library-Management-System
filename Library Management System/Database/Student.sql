USE [Library Management System]

CREATE TABLE Student (
		[Student ID] INT FOREIGN KEY REFERENCES Users([User ID]),
		[Student Name] VARCHAR(20),
		[Student Age] INT,
		[Student CNIC] VARCHAR(15) UNIQUE,
		[Phone Number] VARCHAR(13),
		[Picture Directory] VARCHAR(30),
	/*
	
		Student_ID, Name, Age, CNIC, Membership, Phone_Number, Picture_Path
	*/
)

ALTER TABLE Student ADD [Student In User ID] INT FOREIGN KEY REFERENCES Users([User ID])