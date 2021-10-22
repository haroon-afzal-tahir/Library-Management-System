USE [Library Management System]

CREATE TABLE Membership (
	/*
		Membership_ID, Student_ID, Dates(Start, End)
	*/
	[Membership ID] INT NOT NULL PRIMARY KEY,
	[Student ID] INT FOREIGN KEY REFERENCES Student([Student ID]),
	[Start Date] DATE,
	[End Date] DATE,
)