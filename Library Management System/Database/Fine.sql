USE [Library Management System]

CREATE TABLE Fine (
	/*
		Fine_ID, Student_ID, Book_ID, Return_Date, Fine_Value
	*/
	[Fine ID] INT NOT NULL PRIMARY KEY,
	[Student ID] INT FOREIGN KEY REFERENCES Student([Student ID]),
	[Book ID] INT FOREIGN KEY REFERENCES Book([Book ID]),
	[Return Date] DATE,
	Fine INT,
)