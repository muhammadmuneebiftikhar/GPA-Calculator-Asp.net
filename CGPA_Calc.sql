USE [master]
GO
/****** Object:  Database [GPA_Calculator]    Script Date: 6/2/2021 2:06:42 AM ******/
CREATE DATABASE [GPA_Calculator]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GPA_Calculator', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GPA_Calculator.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GPA_Calculator_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GPA_Calculator_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GPA_Calculator] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GPA_Calculator].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GPA_Calculator] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GPA_Calculator] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GPA_Calculator] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GPA_Calculator] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GPA_Calculator] SET ARITHABORT OFF 
GO
ALTER DATABASE [GPA_Calculator] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GPA_Calculator] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GPA_Calculator] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GPA_Calculator] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GPA_Calculator] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GPA_Calculator] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GPA_Calculator] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GPA_Calculator] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GPA_Calculator] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GPA_Calculator] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GPA_Calculator] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GPA_Calculator] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GPA_Calculator] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GPA_Calculator] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GPA_Calculator] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GPA_Calculator] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GPA_Calculator] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GPA_Calculator] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GPA_Calculator] SET  MULTI_USER 
GO
ALTER DATABASE [GPA_Calculator] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GPA_Calculator] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GPA_Calculator] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GPA_Calculator] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GPA_Calculator] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GPA_Calculator] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GPA_Calculator] SET QUERY_STORE = OFF
GO
USE [GPA_Calculator]
GO
/****** Object:  Table [dbo].[cal_cgpa]    Script Date: 6/2/2021 2:06:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cal_cgpa](
	[roll_no] [int] NOT NULL,
	[semester] [int] NOT NULL,
	[sgpa] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cgpa]    Script Date: 6/2/2021 2:06:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cgpa](
	[ID] [int] NOT NULL,
	[roll_no] [int] NOT NULL,
	[cgpa] [float] NOT NULL,
 CONSTRAINT [PK_cgpa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[formula_table]    Script Date: 6/2/2021 2:06:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formula_table](
	[ID] [int] NOT NULL,
	[Grades] [nchar](10) NOT NULL,
	[Marks_High] [float] NOT NULL,
	[Marks_Low] [float] NOT NULL,
	[Points] [float] NOT NULL,
 CONSTRAINT [PK_formula_table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registeration]    Script Date: 6/2/2021 2:06:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registeration](
	[name] [nchar](255) NOT NULL,
	[roll_no] [int] NOT NULL,
	[password] [varchar](50) NOT NULL,
	[degree] [nchar](255) NOT NULL,
 CONSTRAINT [PK_registeration] PRIMARY KEY CLUSTERED 
(
	[roll_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sgpa_by_grades]    Script Date: 6/2/2021 2:06:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sgpa_by_grades](
	[roll_no] [int] NOT NULL,
	[semester] [int] NOT NULL,
	[subjects] [varchar](50) NOT NULL,
	[cr] [int] NOT NULL,
	[grades] [varchar](50) NOT NULL,
	[points] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sgpa_by_marks]    Script Date: 6/2/2021 2:06:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sgpa_by_marks](
	[roll_no] [int] NOT NULL,
	[semester] [int] NOT NULL,
	[subjects] [varchar](50) NOT NULL,
	[cr] [int] NOT NULL,
	[marks] [int] NOT NULL,
	[points] [float] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[cal_cgpa] ([roll_no], [semester], [sgpa]) VALUES (2092, 1, 2.91)
GO
INSERT [dbo].[cal_cgpa] ([roll_no], [semester], [sgpa]) VALUES (2092, 2, 2.83)
GO
INSERT [dbo].[cal_cgpa] ([roll_no], [semester], [sgpa]) VALUES (2092, 3, 3.33)
GO
INSERT [dbo].[cal_cgpa] ([roll_no], [semester], [sgpa]) VALUES (2092, 4, 3.44)
GO
INSERT [dbo].[formula_table] ([ID], [Grades], [Marks_High], [Marks_Low], [Points]) VALUES (1, N'A1        ', 100, 89.5, 4)
GO
INSERT [dbo].[formula_table] ([ID], [Grades], [Marks_High], [Marks_Low], [Points]) VALUES (2, N'A2        ', 89, 79.5, 4)
GO
INSERT [dbo].[formula_table] ([ID], [Grades], [Marks_High], [Marks_Low], [Points]) VALUES (3, N'A3        ', 79, 76.5, 3.66)
GO
INSERT [dbo].[formula_table] ([ID], [Grades], [Marks_High], [Marks_Low], [Points]) VALUES (4, N'B1        ', 76, 73.5, 3.33)
GO
INSERT [dbo].[formula_table] ([ID], [Grades], [Marks_High], [Marks_Low], [Points]) VALUES (5, N'B2        ', 73, 69.5, 3)
GO
INSERT [dbo].[formula_table] ([ID], [Grades], [Marks_High], [Marks_Low], [Points]) VALUES (6, N'B3        ', 69, 66.5, 2.66)
GO
INSERT [dbo].[formula_table] ([ID], [Grades], [Marks_High], [Marks_Low], [Points]) VALUES (7, N'C1        ', 66, 63.5, 2.33)
GO
INSERT [dbo].[formula_table] ([ID], [Grades], [Marks_High], [Marks_Low], [Points]) VALUES (8, N'C2        ', 63, 59.5, 2)
GO
INSERT [dbo].[formula_table] ([ID], [Grades], [Marks_High], [Marks_Low], [Points]) VALUES (9, N'D         ', 59, 49.5, 1.5)
GO
INSERT [dbo].[formula_table] ([ID], [Grades], [Marks_High], [Marks_Low], [Points]) VALUES (10, N'F         ', 49, 0, 0)
GO
INSERT [dbo].[registeration] ([name], [roll_no], [password], [degree]) VALUES (N'Abdullah                                                                                                                                                                                                                                                       ', 20, N'abdullah', N'Home                                                                                                                                                                                                                                                           ')
GO
INSERT [dbo].[registeration] ([name], [roll_no], [password], [degree]) VALUES (N'Shaheer                                                                                                                                                                                                                                                        ', 1122, N'shaheer', N'kuch b nhi                                                                                                                                                                                                                                                     ')
GO
INSERT [dbo].[registeration] ([name], [roll_no], [password], [degree]) VALUES (N'Osama Zameer                                                                                                                                                                                                                                                   ', 2084, N'okpass', N'BSCS                                                                                                                                                                                                                                                           ')
GO
INSERT [dbo].[registeration] ([name], [roll_no], [password], [degree]) VALUES (N'Muneeb                                                                                                                                                                                                                                                         ', 2092, N'Pass', N'BSCS                                                                                                                                                                                                                                                           ')
GO
INSERT [dbo].[registeration] ([name], [roll_no], [password], [degree]) VALUES (N'Shujja                                                                                                                                                                                                                                                         ', 2093, N'Pass                                              ', N'BSCS                                                                                                                                                                                                                                                           ')
GO
INSERT [dbo].[sgpa_by_grades] ([roll_no], [semester], [subjects], [cr], [grades], [points]) VALUES (2092, 1, N'English', 4, N'A3', 3.66)
GO
INSERT [dbo].[sgpa_by_grades] ([roll_no], [semester], [subjects], [cr], [grades], [points]) VALUES (2092, 1, N'Aoops', 4, N'A1', 4)
GO
INSERT [dbo].[sgpa_by_marks] ([roll_no], [semester], [subjects], [cr], [marks], [points]) VALUES (2092, 1, N'English', 3, 78, 3.66)
GO
INSERT [dbo].[sgpa_by_marks] ([roll_no], [semester], [subjects], [cr], [marks], [points]) VALUES (2092, 1, N'Aoops', 4, 96, 4)
GO
INSERT [dbo].[sgpa_by_marks] ([roll_no], [semester], [subjects], [cr], [marks], [points]) VALUES (2092, 1, N'Calculus', 3, 54, 1.5)
GO
INSERT [dbo].[sgpa_by_marks] ([roll_no], [semester], [subjects], [cr], [marks], [points]) VALUES (2092, 1, N'Islamiyat', 2, 78, 3.66)
GO
INSERT [dbo].[sgpa_by_marks] ([roll_no], [semester], [subjects], [cr], [marks], [points]) VALUES (2092, 1, N'PF', 4, 78, 3.66)
GO
USE [master]
GO
ALTER DATABASE [GPA_Calculator] SET  READ_WRITE 
GO
