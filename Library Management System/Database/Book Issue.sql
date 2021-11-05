USE [Library Management System]

CREATE TABLE [Book Issue] (
    [User ID] INT FOREIGN KEY REFERENCES Users([User ID]),
	[Book ID] INT FOREIGN KEY REFERENCES Book([Book ID]),
	[Issue Date] DATE,
	[Due Date] DATE,
	/*
		User_ID, Book_ID, Issue_Date, Due_Date
	*/
)