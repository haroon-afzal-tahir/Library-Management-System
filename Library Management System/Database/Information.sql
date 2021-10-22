USE [Library Management System]

CREATE TABLE Information (
	[Info ID] INT PRIMARY KEY NOT NULL,
	[User ID] INT FOREIGN KEY REFERENCES USERS([User ID]),
	[Book ID] INT FOREIGN KEY REFERENCES BOOKS([Book ID]),
	/*
		Info_ID, User_ID, Book_ID
	*/
)