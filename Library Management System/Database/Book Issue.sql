USE [Library Management System]

CREATE TABLE [Book Issue] (
    User_ID INT FOREIGN KEY REFERENCES PERSON(person.)
	/*
		User_ID, Book_ID, Issue_Date, Due_Date
	*/
)