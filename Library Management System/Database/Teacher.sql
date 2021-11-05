USE [Library Management System]

CREATE TABLE Teacher (
		[Teacher ID] INT FOREIGN KEY REFERENCES Users([User ID]),
		[Teacher Name] VARCHAR(30),
		[Teacher Age] INT,
		[Teacher CNIC] VARCHAR(15) UNIQUE,
		[Teacher Phone Number] VARCHAR(13),
		[Picture Directory] VARCHAR(20),

	/*
		Teacher_ID, Name, Age, CNIC, Membership, Phone_Number, Picture_Path
	*/
)