USE [Library Management System]

CREATE TABLE Student (
		[Student ID] INT PRIMARY KEY,
		[Student Name] VARCHAR(20),
		[Student Age] INT,
		[Student CNIC] VARCHAR(15) UNIQUE,
		[Student Membership] INT FOREIGN KEY REFERENCES Membership([Membership ID]),
		[Phone Number] VARCHAR(13),
		[Picture Directory] VARCHAR(30),
	/*
	
		Student_ID, Name, Age, CNIC, Membership, Phone_Number, Picture_Path
	*/
)