USE [PMBDatabase]
GO
/****** Object:  Table [dbo].[Description]    Script Date: 04/14/2016 16:40:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Description](
	[ID_Des] [varchar](5) COLLATE Latin1_General_CS_AI NULL,
	[Vision] [text] COLLATE Latin1_General_CS_AI NULL,
	[Mission] [text] COLLATE Latin1_General_CS_AI NULL,
	[Purpose] [text] COLLATE Latin1_General_CS_AI NULL,
	[Motto] [text] COLLATE Latin1_General_CS_AI NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF

USE [PMBDatabase]
GO
/****** Object:  Table [dbo].[Major]    Script Date: 04/14/2016 16:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Major](
	[ID_Major] [varchar](5) COLLATE Latin1_General_CS_AI NULL,
	[Program] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[Stage] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[Concentration] [varchar](100) COLLATE Latin1_General_CS_AI NULL,
	[Status] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[Quota] [varchar](50) COLLATE Latin1_General_CS_AI NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF

USE [PMBDatabase]
GO
/****** Object:  Table [dbo].[tb_admin]    Script Date: 04/14/2016 16:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_admin](
	[id_admin] [varchar](5) COLLATE Latin1_General_CS_AI NOT NULL,
	[nama] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[username] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[password] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[status] [varchar](10) COLLATE Latin1_General_CS_AI NULL,
 CONSTRAINT [PK_tb_admin] PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF

USE [PMBDatabase]
GO
/****** Object:  Table [dbo].[tb_Student]    Script Date: 04/14/2016 16:40:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Student](
	[ID_Student] [varchar](5) COLLATE Latin1_General_CS_AI NULL,
	[ID_Major] [varchar](5) COLLATE Latin1_General_CS_AI NULL,
	[Fullname] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[Gender] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[Birth] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[Schoolname] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[major] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[Address] [text] COLLATE Latin1_General_CS_AI NULL,
	[Phone] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[Email] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[Graduation] [varchar](50) COLLATE Latin1_General_CS_AI NULL,
	[Photo] [text] COLLATE Latin1_General_CS_AI NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF