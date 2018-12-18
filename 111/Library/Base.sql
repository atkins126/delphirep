USE [MyDB1]
GO
/****** Object:  Table [dbo].[Ganre]    Script Date: 11/08/2018 08:29:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ganre](
	[ID_Genre] [int] IDENTITY(1,1) NOT NULL,
	[Name_G] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Genre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 11/08/2018 08:29:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[ID_Author] [int] IDENTITY(1,1) NOT NULL,
	[Name_Author] [nchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Author] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reader]    Script Date: 11/08/2018 08:29:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reader](
	[ID_Reader] [int] IDENTITY(1,1) NOT NULL,
	[Name_R] [varchar](50) NOT NULL,
	[Date_B] [date] NULL,
	[Adres] [varchar](70) NULL,
	[Tel] [varchar](15) NULL,
	[Date_R] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Reader] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID_Reader] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book]    Script Date: 11/08/2018 08:29:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[ID_Book] [int] IDENTITY(1,1) NOT NULL,
	[Name_B] [nchar](60) NOT NULL,
	[ID_Genre] [int] NOT NULL,
	[ID_Author] [int] NOT NULL,
	[Sourse] [nchar](60) NOT NULL,
	[Price] [decimal](10, 2) NULL,
	[Publisher] [nchar](70) NOT NULL,
	[Number_of_Pages] [int] NOT NULL,
	[Year_of_Pub] [int] NOT NULL,
	[Date_P] [date] NULL,
	[kol] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Book] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[INS_Reader]    Script Date: 11/08/2018 08:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INS_Reader]
@Name_R varchar(50),@Date_B Date,@Adres varchar(70),@Tel varchar(15),@Date_R date
AS INSERT INTO Reader(Name_R,Date_B,Adres,Tel,Date_R) VALUES (@Name_R,@Date_B,@Adres,@Tel,@Date_R)
GO
/****** Object:  StoredProcedure [dbo].[INS_BOOK]    Script Date: 11/08/2018 08:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC.[dbo].[INS_BOOK]
@NAME_B VARCHAR(150),@SOURCE VARCHAR(70),@DATE_P DATE, @COUNT INT,@PRICE DECIMAL(5,2), @ID_GENRE INT,
@ID_AUTHOR INT, @PUBLISHER VARCHAR(50),@NAMBER_PAGES INT,@YEAR_PUB INT,
@Id int OUT
AS INSERT INTO Book(NAME_B,Sourse, DATE_P,kol,Price,ID_GENRE,ID_AUTHOR,PUBLISHER,Number_of_Pages,Year_of_Pub)
VALUES(@NAME_B,@SOURCE,@DATE_P,@COUNT,@PRICE,@ID_GENRE,@ID_AUTHOR,@PUBLISHER,@NAMBER_PAGES,@YEAR_PUB)
SET @Id = SCOPE_IDENTITY()
GO
/****** Object:  Table [dbo].[Doc]    Script Date: 11/08/2018 08:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doc](
	[ID_Doc] [int] IDENTITY(1,1) NOT NULL,
	[ID_Book] [int] NOT NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Doc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID_Doc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 11/08/2018 08:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[ID_Delivery] [int] IDENTITY(1,1) NOT NULL,
	[ID_Doc] [int] NOT NULL,
	[ID_Reader] [int] NOT NULL,
	[Date_D] [date] NOT NULL,
	[Date_Return_Plan] [date] NOT NULL,
	[Date_Return_Fact] [date] NULL,
	[Date_R] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Delivery] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID_Delivery] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[INS_DOC]    Script Date: 11/08/2018 08:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INS_DOC]
@ID_Book int,@Status int
AS INSERT INTO Doc(ID_Book,Status) VALUES (@ID_Book,@Status)
GO
/****** Object:  StoredProcedure [dbo].[Upd_Delivary]    Script Date: 11/08/2018 08:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Upd_Delivary]
@Date_Return_Fact date,@ID_Delivery int, @ID_Doc int
AS 
UPDATE Delivery SET Date_Return_Fact=@Date_Return_Fact WHERE ID_Delivery=@ID_Delivery
update Doc set Status=0 from Doc, Delivery where Doc.ID_Doc=Delivery.ID_Doc and Delivery.ID_Doc=@ID_Doc
GO
/****** Object:  StoredProcedure [dbo].[REPORT_4]    Script Date: 11/08/2018 08:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[REPORT_4]
@D1 DATE, @D2 DATE
AS 
SELECT Doc.ID_Doc AS Номер, Book.Name_B as Название, Reader.Name_R as Должник, Delivery.Date_D AS ДатаВыдачи, Delivery.Date_Return_Plan AS ДатаВозвратаПоПлану FROM Delivery,Doc,Book, Reader 
WHERE Delivery.ID_Reader=Reader.ID_Reader and  Book.ID_Book=Doc.ID_Book AND Doc.ID_Doc=Delivery.ID_Doc
 AND Delivery.Date_D BETWEEN @D1 and @D2 and doc.Status=1
GO
/****** Object:  StoredProcedure [dbo].[REPORT_3]    Script Date: 11/08/2018 08:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[REPORT_3]
@D1 DATE,@D2 DATE
AS 
SELECT Author.Name_Author AS Автор,COUNT(Delivery.ID_Delivery) AS [Кол-во выданных] FROM Delivery,Doc,Book, Author WHERE 
Author.ID_Author=Book.ID_Author AND Book.ID_Book=Doc.ID_Book AND Doc.ID_Doc=Delivery.ID_Doc
AND Delivery.Date_D BETWEEN @D1 AND @D2 
GROUP BY Author.Name_Author
ORDER BY COUNT(Delivery.ID_Delivery) DESC
GO
/****** Object:  StoredProcedure [dbo].[REPORT_2]    Script Date: 11/08/2018 08:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[REPORT_2]
@D1 DATE,@D2 DATE
AS 
SELECT Ganre.Name_G AS Жанр,COUNT(Delivery.ID_Delivery) AS [Кол-во выданных] FROM Delivery,Doc,Book, Ganre WHERE 
Ganre.ID_Genre=Book.ID_Genre AND Book.ID_Book=Doc.ID_Book AND Doc.ID_Doc=Delivery.ID_Doc
 AND Delivery.Date_D BETWEEN @D1 AND @D2 
GROUP BY Ganre.Name_G
ORDER BY COUNT(Delivery.ID_Delivery) DESC
GO
/****** Object:  StoredProcedure [dbo].[REPORT_1]    Script Date: 11/08/2018 08:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[REPORT_1]
@D1 DATE,@D2 DATE
AS 
SELECT Book.Name_B AS Название,COUNT(Delivery.ID_Delivery) AS [Кол-во выданных] FROM Delivery,Doc,Book WHERE 
 Book.ID_Book=Doc.ID_Book AND Doc.ID_Doc=Delivery.ID_Doc
 AND Delivery.Date_D BETWEEN @D1 AND @D2 
GROUP BY Book.Name_B
ORDER BY COUNT(Delivery.ID_Delivery) DESC
GO
/****** Object:  StoredProcedure [dbo].[INS_Delivary]    Script Date: 11/08/2018 08:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INS_Delivary]
@ID_Doc int,@ID_Reader int, @Date_D date,@Date_Return_Plan date
AS INSERT INTO Delivery(ID_Doc,ID_Reader,Date_D,Date_Return_Plan) VALUES (@ID_Doc,@ID_Reader,@Date_D,@Date_Return_Plan)
update doc set Status=1 from doc, Delivery where Doc.ID_Doc=Delivery.ID_Doc and Delivery.ID_Doc=@ID_Doc;
GO
/****** Object:  Check [CK__Doc__Status__2E1BDC42]    Script Date: 11/08/2018 08:29:06 ******/
ALTER TABLE [dbo].[Doc]  WITH CHECK ADD CHECK  (([Status]=(0) OR [Status]=(1)))
GO
/****** Object:  ForeignKey [FK__Book__ID_Author__25869641]    Script Date: 11/08/2018 08:29:03 ******/
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([ID_Author])
REFERENCES [dbo].[Author] ([ID_Author])
GO
/****** Object:  ForeignKey [FK__Book__ID_Genre__267ABA7A]    Script Date: 11/08/2018 08:29:03 ******/
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([ID_Genre])
REFERENCES [dbo].[Ganre] ([ID_Genre])
GO
/****** Object:  ForeignKey [FK__Doc__ID_Book__2F10007B]    Script Date: 11/08/2018 08:29:06 ******/
ALTER TABLE [dbo].[Doc]  WITH CHECK ADD FOREIGN KEY([ID_Book])
REFERENCES [dbo].[Book] ([ID_Book])
GO
/****** Object:  ForeignKey [FK__Doc__ID_Book__30F848ED]    Script Date: 11/08/2018 08:29:06 ******/
ALTER TABLE [dbo].[Doc]  WITH CHECK ADD FOREIGN KEY([ID_Book])
REFERENCES [dbo].[Book] ([ID_Book])
GO
/****** Object:  ForeignKey [FK__Delivery__ID_Doc__3F466844]    Script Date: 11/08/2018 08:29:06 ******/
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD FOREIGN KEY([ID_Doc])
REFERENCES [dbo].[Doc] ([ID_Doc])
GO
/****** Object:  ForeignKey [FK__Delivery__ID_Rea__403A8C7D]    Script Date: 11/08/2018 08:29:06 ******/
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD FOREIGN KEY([ID_Reader])
REFERENCES [dbo].[Reader] ([ID_Reader])
GO
