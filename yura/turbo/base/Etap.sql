USE [Razrab_Andryuschenko]
GO

/****** Object:  Table [dbo].[Etap]    Script Date: 01.12.2020 21:41:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Etap](
	[N_Etap] [int] IDENTITY(1,1) NOT NULL,
	[Nam_etap] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[N_Etap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

