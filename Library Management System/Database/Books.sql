USE [Library Management System]

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