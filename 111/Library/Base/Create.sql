USE [MyDB1]
CREATE TABLE Book( 
ID_Book int identity (1,1)PRIMARY KEY,
Name_B nchar(60) NOT NULL,
ID_Genre int NOT NULL, 
ID_Author int NOT null, 
Sourse nchar(60) NOT NULL,
Price decimal(10, 2) NULL,
Publisher nchar(70) NOT NULL,
Number_of_Pages int NOT NULL,
Year_of_Pub int NOT NULL,
FOREIGN KEY (ID_Author) REFERENCES Author (ID_Author),
FOREIGN KEY (ID_Genre) REFERENCES Ganre (ID_Genre)
);
CREATE TABLE Author(
	ID_Author int identity(1,1) PRIMARY KEY,
	[Name_Author] [nchar](40) NULL
)


CREATE TABLE [dbo].[Ganre](
	[ID_Genre] [int] identity(1,1) PRIMARY KEY,
	[Name_G] [nchar](50) NULL
)