USE [Library Management System]

CREATE TABLE Users (

	[User ID] INT PRIMARY KEY,
	Username VARCHAR(20),
	Password VARCHAR(20),
	/*
		(pk) User_ID, Username, Password
	*/
)