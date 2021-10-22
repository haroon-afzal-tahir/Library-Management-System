USE [Library Management System]

CREATE TABLE [Room Booking] (
	/*
		Booking_ID, User_ID, Room_ID, Start Time, End Time, Booking Date
	*/
	[Booking ID] INT NOT NULL PRIMARY KEY,
	[User ID] INT FOREIGN KEY REFERENCES Users([User ID]),
	[Room ID] INT FOREIGN KEY REFERENCES Rooms([Room ID]),
	[Start Time] DATE,
	[End Time] DATE,
	[Booking Date] DATE,
)