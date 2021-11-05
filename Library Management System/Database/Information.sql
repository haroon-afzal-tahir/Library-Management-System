USE [Library Management System]

CREATE TABLE Information (
	[Info ID] INT PRIMARY KEY NOT NULL,
	[User ID] INT FOREIGN KEY REFERENCES Users([User ID]),
	[Book ID] INT FOREIGN KEY REFERENCES Book([Book ID]),
	/*
		Info_ID, User_ID, Book_ID
	*/
)