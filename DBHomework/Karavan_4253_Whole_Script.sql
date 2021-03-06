USE [master]
GO
/****** Object:  Database [Karavan_4253]    Script Date: 10/21/2020 5:33:02 PM ******/
CREATE DATABASE [Karavan_4253]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Karavan_4253', FILENAME = N'/var/opt/mssql/data/Karavan_4253.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Karavan_4253_log', FILENAME = N'/var/opt/mssql/data/Karavan_4253_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Karavan_4253] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Karavan_4253].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Karavan_4253] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Karavan_4253] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Karavan_4253] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Karavan_4253] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Karavan_4253] SET ARITHABORT OFF 
GO
ALTER DATABASE [Karavan_4253] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Karavan_4253] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Karavan_4253] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Karavan_4253] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Karavan_4253] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Karavan_4253] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Karavan_4253] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Karavan_4253] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Karavan_4253] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Karavan_4253] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Karavan_4253] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Karavan_4253] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Karavan_4253] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Karavan_4253] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Karavan_4253] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Karavan_4253] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Karavan_4253] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Karavan_4253] SET RECOVERY FULL 
GO
ALTER DATABASE [Karavan_4253] SET  MULTI_USER 
GO
ALTER DATABASE [Karavan_4253] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Karavan_4253] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Karavan_4253] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Karavan_4253] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Karavan_4253] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Karavan_4253', N'ON'
GO
ALTER DATABASE [Karavan_4253] SET QUERY_STORE = OFF
GO
USE [Karavan_4253]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[id_posetitel] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ime] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_posetitel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email_Grupa]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email_Grupa](
	[id_grupa] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[jazik_id_jazikm] [numeric](18, 0) NULL,
	[naziv] [nvarchar](50) NULL,
	[aktivna] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_grupa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email_Poraka]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email_Poraka](
	[id_poraka] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Grupa_Id_Grupa] [numeric](18, 0) NULL,
	[datum] [datetime] NULL,
	[naslov] [nvarchar](50) NULL,
	[tekst] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_poraka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galerija]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galerija](
	[id_galerija] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[preview] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_galerija] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galerija_Opis]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galerija_Opis](
	[gal_id_galerija] [numeric](18, 0) NULL,
	[jazik_id_jazikg] [numeric](18, 0) NULL,
	[naslov] [nvarchar](50) NULL,
	[opis] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galerija_Slika]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galerija_Slika](
	[id_slika] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[gal_id_galerijas] [numeric](18, 0) NULL,
	[opisslika] [nvarchar](50) NULL,
	[slika] [nvarchar](50) NULL,
	[opisslikaeng] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_slika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jazik]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jazik](
	[id_jazik] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[jazik] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_jazik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kadministrator]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kadministrator](
	[id_admin] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[ime] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kdokument]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kdokument](
	[id_dokument] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[naslov] [nvarchar](50) NULL,
	[jazik_id_jazikd] [numeric](18, 0) NULL,
	[dokument] [nvarchar](50) NULL,
	[prikaz] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dokument] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Knovost]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Knovost](
	[id_novost] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[adm_id_adminn] [numeric](18, 0) NULL,
	[jazik_id_jazikn] [numeric](18, 0) NULL,
	[naslov] [nvarchar](50) NULL,
	[opis] [nvarchar](1500) NULL,
	[datum_od] [datetime] NULL,
	[datum_do] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_novost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mailing]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mailing](
	[Email_Id_Posetitel] [numeric](18, 0) NULL,
	[Email_Id_Grupa] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Email] ON 

INSERT [dbo].[Email] ([id_posetitel], [ime], [mail]) VALUES (CAST(1 AS Numeric(18, 0)), N'John', N'John@gmail.com')
INSERT [dbo].[Email] ([id_posetitel], [ime], [mail]) VALUES (CAST(2 AS Numeric(18, 0)), N'Kenny', N'kenny@gmail.com')
INSERT [dbo].[Email] ([id_posetitel], [ime], [mail]) VALUES (CAST(3 AS Numeric(18, 0)), N'Lenny', N'lenny@gmail.com')
INSERT [dbo].[Email] ([id_posetitel], [ime], [mail]) VALUES (CAST(4 AS Numeric(18, 0)), N'Wayne', N'wayne@gmail.com')
INSERT [dbo].[Email] ([id_posetitel], [ime], [mail]) VALUES (CAST(5 AS Numeric(18, 0)), N'Kobe', N'kobe@gmail.com')
INSERT [dbo].[Email] ([id_posetitel], [ime], [mail]) VALUES (CAST(6 AS Numeric(18, 0)), N'Messi', N'messi@gmail.com')
INSERT [dbo].[Email] ([id_posetitel], [ime], [mail]) VALUES (CAST(7 AS Numeric(18, 0)), N'Cristiano', N'cristiano@gmail.com')
INSERT [dbo].[Email] ([id_posetitel], [ime], [mail]) VALUES (CAST(8 AS Numeric(18, 0)), N'Emma', N'emma@gmail.com')
INSERT [dbo].[Email] ([id_posetitel], [ime], [mail]) VALUES (CAST(9 AS Numeric(18, 0)), N'Mark', N'mark@gmail.com')
INSERT [dbo].[Email] ([id_posetitel], [ime], [mail]) VALUES (CAST(10 AS Numeric(18, 0)), N'Ahmed', N'ahmed@gmail.com')
SET IDENTITY_INSERT [dbo].[Email] OFF
GO
SET IDENTITY_INSERT [dbo].[Email_Grupa] ON 

INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(12 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(13 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(17 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(18 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(23 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(24 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(25 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(26 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(27 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(28 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(29 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(30 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'PROFESSIONAL', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Email_Grupa] ([id_grupa], [jazik_id_jazikm], [naziv], [aktivna]) VALUES (CAST(31 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'PERSONAL', CAST(0 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Email_Grupa] OFF
GO
SET IDENTITY_INSERT [dbo].[Email_Poraka] ON 

INSERT [dbo].[Email_Poraka] ([id_poraka], [Grupa_Id_Grupa], [datum], [naslov], [tekst]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'2020-10-18T00:00:00.000' AS DateTime), N'Work', N'Work at 9pm')
INSERT [dbo].[Email_Poraka] ([id_poraka], [Grupa_Id_Grupa], [datum], [naslov], [tekst]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(N'2020-10-19T00:00:00.000' AS DateTime), N'Work', N'Work at 7pm')
INSERT [dbo].[Email_Poraka] ([id_poraka], [Grupa_Id_Grupa], [datum], [naslov], [tekst]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(N'2020-10-20T00:00:00.000' AS DateTime), N'Workout', N'Workout at 2pm')
INSERT [dbo].[Email_Poraka] ([id_poraka], [Grupa_Id_Grupa], [datum], [naslov], [tekst]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(N'2020-10-21T00:00:00.000' AS DateTime), N'Work', N'Workout at 6pm')
INSERT [dbo].[Email_Poraka] ([id_poraka], [Grupa_Id_Grupa], [datum], [naslov], [tekst]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(N'2020-10-22T00:00:00.000' AS DateTime), N'Work', N'Work at 1pm')
INSERT [dbo].[Email_Poraka] ([id_poraka], [Grupa_Id_Grupa], [datum], [naslov], [tekst]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(N'2020-10-23T00:00:00.000' AS DateTime), N'Work', N'Work at 5pm')
INSERT [dbo].[Email_Poraka] ([id_poraka], [Grupa_Id_Grupa], [datum], [naslov], [tekst]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(N'2020-10-24T00:00:00.000' AS DateTime), N'Work', N'Workout at 7pm')
INSERT [dbo].[Email_Poraka] ([id_poraka], [Grupa_Id_Grupa], [datum], [naslov], [tekst]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(N'2020-10-25T00:00:00.000' AS DateTime), N'Work', N'Work at 4pm')
INSERT [dbo].[Email_Poraka] ([id_poraka], [Grupa_Id_Grupa], [datum], [naslov], [tekst]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), CAST(N'2020-10-26T00:00:00.000' AS DateTime), N'Work', N'Work at 7pm')
INSERT [dbo].[Email_Poraka] ([id_poraka], [Grupa_Id_Grupa], [datum], [naslov], [tekst]) VALUES (CAST(12 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(N'2020-10-27T00:00:00.000' AS DateTime), N'Work', N'Workout at 1pm')
SET IDENTITY_INSERT [dbo].[Email_Poraka] OFF
GO
SET IDENTITY_INSERT [dbo].[Galerija] ON 

INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(12 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(13 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(17 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(18 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[Galerija] ([id_galerija], [preview]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Galerija] OFF
GO
INSERT [dbo].[Galerija_Opis] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (NULL, CAST(1 AS Numeric(18, 0)), N'REPAIR', N'Janitor')
INSERT [dbo].[Galerija_Opis] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (NULL, CAST(2 AS Numeric(18, 0)), N'CONSTRUCTION', N'Manager')
INSERT [dbo].[Galerija_Opis] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (NULL, CAST(3 AS Numeric(18, 0)), N'REPAIR', N'Plumer')
INSERT [dbo].[Galerija_Opis] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (NULL, CAST(4 AS Numeric(18, 0)), N'SERVICE', N'Manager')
INSERT [dbo].[Galerija_Opis] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (NULL, CAST(5 AS Numeric(18, 0)), N'CONSTRUCTION', N'Janitor')
INSERT [dbo].[Galerija_Opis] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (NULL, CAST(6 AS Numeric(18, 0)), N'REPAIR', N'Manager')
INSERT [dbo].[Galerija_Opis] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (NULL, CAST(7 AS Numeric(18, 0)), N'REPAIR', N'Company')
INSERT [dbo].[Galerija_Opis] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (NULL, CAST(8 AS Numeric(18, 0)), N'SERVICE', N'Plumer')
INSERT [dbo].[Galerija_Opis] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (NULL, CAST(9 AS Numeric(18, 0)), N'SERVICE', N'Monitor')
INSERT [dbo].[Galerija_Opis] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (NULL, CAST(10 AS Numeric(18, 0)), N'CONSTRUCTION', N'Manager')
GO
SET IDENTITY_INSERT [dbo].[Galerija_Slika] ON 

INSERT [dbo].[Galerija_Slika] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [opisslikaeng]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Tazen', N'photo:330', N'Sad')
INSERT [dbo].[Galerija_Slika] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [opisslikaeng]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Srekjen', N'photo:420', N'Happy')
INSERT [dbo].[Galerija_Slika] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [opisslikaeng]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Nervozen', N'photo:445', N'Nervous')
INSERT [dbo].[Galerija_Slika] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [opisslikaeng]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Depresiven', N'photo:1', N'Depressed')
INSERT [dbo].[Galerija_Slika] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [opisslikaeng]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Mrzliv', N'photo:33', N'Lazy')
INSERT [dbo].[Galerija_Slika] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [opisslikaeng]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'Glup', N'photo:22', N'Stupid')
INSERT [dbo].[Galerija_Slika] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [opisslikaeng]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Nervozen', N'photo:11', N'Grumpy')
INSERT [dbo].[Galerija_Slika] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [opisslikaeng]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'Porazen', N'photo:17', N'Defeated')
INSERT [dbo].[Galerija_Slika] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [opisslikaeng]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'Ljubomoren', N'photo:39', N'Jealous')
INSERT [dbo].[Galerija_Slika] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [opisslikaeng]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), N'Napuknat', N'photo:99', N'Uptight')
SET IDENTITY_INSERT [dbo].[Galerija_Slika] OFF
GO
SET IDENTITY_INSERT [dbo].[Jazik] ON 

INSERT [dbo].[Jazik] ([id_jazik], [jazik]) VALUES (CAST(1 AS Numeric(18, 0)), N'English')
INSERT [dbo].[Jazik] ([id_jazik], [jazik]) VALUES (CAST(2 AS Numeric(18, 0)), N'Afrikaans')
INSERT [dbo].[Jazik] ([id_jazik], [jazik]) VALUES (CAST(3 AS Numeric(18, 0)), N'Mandarin')
INSERT [dbo].[Jazik] ([id_jazik], [jazik]) VALUES (CAST(4 AS Numeric(18, 0)), N'Dutch')
INSERT [dbo].[Jazik] ([id_jazik], [jazik]) VALUES (CAST(5 AS Numeric(18, 0)), N'German')
INSERT [dbo].[Jazik] ([id_jazik], [jazik]) VALUES (CAST(6 AS Numeric(18, 0)), N'Italian')
INSERT [dbo].[Jazik] ([id_jazik], [jazik]) VALUES (CAST(7 AS Numeric(18, 0)), N'Arabic')
INSERT [dbo].[Jazik] ([id_jazik], [jazik]) VALUES (CAST(8 AS Numeric(18, 0)), N'French')
INSERT [dbo].[Jazik] ([id_jazik], [jazik]) VALUES (CAST(9 AS Numeric(18, 0)), N'Serbian')
INSERT [dbo].[Jazik] ([id_jazik], [jazik]) VALUES (CAST(10 AS Numeric(18, 0)), N'Macedonian')
INSERT [dbo].[Jazik] ([id_jazik], [jazik]) VALUES (CAST(11 AS Numeric(18, 0)), N'English')
SET IDENTITY_INSERT [dbo].[Jazik] OFF
GO
SET IDENTITY_INSERT [dbo].[Kadministrator] ON 

INSERT [dbo].[Kadministrator] ([id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(1 AS Numeric(18, 0)), N'johnny', N'jj', N'johnny', N'072219951')
INSERT [dbo].[Kadministrator] ([id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(2 AS Numeric(18, 0)), N'kenny', N'kk', N'kenny', N'072219952')
INSERT [dbo].[Kadministrator] ([id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(3 AS Numeric(18, 0)), N'wenny', N'ww', N'wenny', N'072219953')
INSERT [dbo].[Kadministrator] ([id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(4 AS Numeric(18, 0)), N'lenny', N'll', N'lenny', N'072219954')
INSERT [dbo].[Kadministrator] ([id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(5 AS Numeric(18, 0)), N'salah', N'ss', N'salah', N'072219955')
INSERT [dbo].[Kadministrator] ([id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(6 AS Numeric(18, 0)), N'farah', N'ff', N'farah', N'072219956')
INSERT [dbo].[Kadministrator] ([id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(7 AS Numeric(18, 0)), N'ahmed', N'aaa', N'ahmed', N'072219957')
INSERT [dbo].[Kadministrator] ([id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(8 AS Numeric(18, 0)), N'aziz', N'aa', N'aziz', N'072219958')
INSERT [dbo].[Kadministrator] ([id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(9 AS Numeric(18, 0)), N'muhammed', N'mm', N'muhammed', N'072219959')
INSERT [dbo].[Kadministrator] ([id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(10 AS Numeric(18, 0)), N'jambo', N'jj', N'jambo', N'072219960')
SET IDENTITY_INSERT [dbo].[Kadministrator] OFF
GO
SET IDENTITY_INSERT [dbo].[Kdokument] ON 

INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(2 AS Numeric(18, 0)), N'Passport', CAST(1 AS Numeric(18, 0)), N'FOREIGN', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(3 AS Numeric(18, 0)), N'ID', CAST(2 AS Numeric(18, 0)), N'FOREIGN', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(4 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(3 AS Numeric(18, 0)), N'FOREIGN', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(5 AS Numeric(18, 0)), N'ID', CAST(4 AS Numeric(18, 0)), N'DOMESTIC', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(6 AS Numeric(18, 0)), N'ID', CAST(5 AS Numeric(18, 0)), N'DOMESTIC', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(7 AS Numeric(18, 0)), N'PASSPORT', CAST(6 AS Numeric(18, 0)), N'DOMESTIC', CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(8 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(7 AS Numeric(18, 0)), N'DOMESTIC', CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(9 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(8 AS Numeric(18, 0)), N'DOMESTIC', CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(10 AS Numeric(18, 0)), N'ID', CAST(9 AS Numeric(18, 0)), N'FOREIGN', CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(11 AS Numeric(18, 0)), N'ID', CAST(10 AS Numeric(18, 0)), N'FOREIGN', CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(12 AS Numeric(18, 0)), N'Passport', CAST(1 AS Numeric(18, 0)), N'FOREIGN', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(13 AS Numeric(18, 0)), N'ID', CAST(2 AS Numeric(18, 0)), N'FOREIGN', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(14 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(3 AS Numeric(18, 0)), N'FOREIGN', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(15 AS Numeric(18, 0)), N'ID', CAST(4 AS Numeric(18, 0)), N'DOMESTIC', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(16 AS Numeric(18, 0)), N'ID', CAST(5 AS Numeric(18, 0)), N'DOMESTIC', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(17 AS Numeric(18, 0)), N'PASSPORT', CAST(6 AS Numeric(18, 0)), N'DOMESTIC', CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(18 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(7 AS Numeric(18, 0)), N'DOMESTIC', CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(19 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(8 AS Numeric(18, 0)), N'DOMESTIC', CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(20 AS Numeric(18, 0)), N'ID', CAST(9 AS Numeric(18, 0)), N'FOREIGN', CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(21 AS Numeric(18, 0)), N'ID', CAST(10 AS Numeric(18, 0)), N'FOREIGN', CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(22 AS Numeric(18, 0)), N'Passport', CAST(1 AS Numeric(18, 0)), N'FOREIGN', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(23 AS Numeric(18, 0)), N'ID', CAST(2 AS Numeric(18, 0)), N'FOREIGN', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(24 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(3 AS Numeric(18, 0)), N'FOREIGN', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(25 AS Numeric(18, 0)), N'ID', CAST(4 AS Numeric(18, 0)), N'DOMESTIC', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(26 AS Numeric(18, 0)), N'ID', CAST(5 AS Numeric(18, 0)), N'DOMESTIC', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(27 AS Numeric(18, 0)), N'PASSPORT', CAST(6 AS Numeric(18, 0)), N'DOMESTIC', CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(28 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(7 AS Numeric(18, 0)), N'DOMESTIC', CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(29 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(8 AS Numeric(18, 0)), N'DOMESTIC', CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(30 AS Numeric(18, 0)), N'ID', CAST(9 AS Numeric(18, 0)), N'FOREIGN', CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(31 AS Numeric(18, 0)), N'ID', CAST(10 AS Numeric(18, 0)), N'FOREIGN', CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(32 AS Numeric(18, 0)), N'Passport', CAST(1 AS Numeric(18, 0)), N'FOREIGN', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(33 AS Numeric(18, 0)), N'ID', CAST(2 AS Numeric(18, 0)), N'FOREIGN', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(34 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(3 AS Numeric(18, 0)), N'FOREIGN', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(35 AS Numeric(18, 0)), N'ID', CAST(4 AS Numeric(18, 0)), N'DOMESTIC', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(36 AS Numeric(18, 0)), N'ID', CAST(5 AS Numeric(18, 0)), N'DOMESTIC', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(37 AS Numeric(18, 0)), N'PASSPORT', CAST(6 AS Numeric(18, 0)), N'DOMESTIC', CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(38 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(7 AS Numeric(18, 0)), N'DOMESTIC', CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(39 AS Numeric(18, 0)), N'BIRTH CERTIFICATE', CAST(8 AS Numeric(18, 0)), N'DOMESTIC', CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(40 AS Numeric(18, 0)), N'ID', CAST(9 AS Numeric(18, 0)), N'FOREIGN', CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[Kdokument] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(41 AS Numeric(18, 0)), N'ID', CAST(10 AS Numeric(18, 0)), N'FOREIGN', CAST(10 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Kdokument] OFF
GO
SET IDENTITY_INSERT [dbo].[Knovost] ON 

INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Wakanda', N'Lloyd', CAST(N'2020-10-18T00:00:00.000' AS DateTime), CAST(N'2020-10-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'MSI', N'Frenny', CAST(N'2020-10-16T00:00:00.000' AS DateTime), CAST(N'2020-10-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Stole', N'Dole', CAST(N'2020-10-12T00:00:00.000' AS DateTime), CAST(N'2020-10-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'The Wolf ', N'Fenny', CAST(N'2020-10-11T00:00:00.000' AS DateTime), CAST(N'2020-10-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Avengers', N'Thanos', CAST(N'2020-10-22T00:00:00.000' AS DateTime), CAST(N'2020-10-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Iphone', N'Bill', CAST(N'2020-10-23T00:00:00.000' AS DateTime), CAST(N'2020-10-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'Samsung', N'Penny', CAST(N'2020-10-05T00:00:00.000' AS DateTime), CAST(N'2020-10-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'AMD', N'CPU', CAST(N'2020-10-02T00:00:00.000' AS DateTime), CAST(N'2020-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'BENQ', N'Screen', CAST(N'2020-10-07T00:00:00.000' AS DateTime), CAST(N'2020-10-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'SteelSeries', N'Mat', CAST(N'2020-10-09T00:00:00.000' AS DateTime), CAST(N'2020-10-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(12 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Wakanda', N'Lloyd', CAST(N'2020-10-18T00:00:00.000' AS DateTime), CAST(N'2020-10-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(13 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'MSI', N'Frenny', CAST(N'2020-10-16T00:00:00.000' AS DateTime), CAST(N'2020-10-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Stole', N'Dole', CAST(N'2020-10-12T00:00:00.000' AS DateTime), CAST(N'2020-10-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'The Wolf ', N'Fenny', CAST(N'2020-10-11T00:00:00.000' AS DateTime), CAST(N'2020-10-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Avengers', N'Thanos', CAST(N'2020-10-22T00:00:00.000' AS DateTime), CAST(N'2020-10-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(17 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Iphone', N'Bill', CAST(N'2020-10-23T00:00:00.000' AS DateTime), CAST(N'2020-10-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(18 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'Samsung', N'Penny', CAST(N'2020-10-05T00:00:00.000' AS DateTime), CAST(N'2020-10-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'AMD', N'CPU', CAST(N'2020-10-02T00:00:00.000' AS DateTime), CAST(N'2020-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'BENQ', N'Screen', CAST(N'2020-10-07T00:00:00.000' AS DateTime), CAST(N'2020-10-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'SteelSeries', N'Mat', CAST(N'2020-10-09T00:00:00.000' AS DateTime), CAST(N'2020-10-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Wakanda', N'Lloyd', CAST(N'2020-10-18T00:00:00.000' AS DateTime), CAST(N'2020-10-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(23 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'MSI', N'Frenny', CAST(N'2020-10-16T00:00:00.000' AS DateTime), CAST(N'2020-10-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(24 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Stole', N'Dole', CAST(N'2020-10-12T00:00:00.000' AS DateTime), CAST(N'2020-10-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(25 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'The Wolf ', N'Fenny', CAST(N'2020-10-11T00:00:00.000' AS DateTime), CAST(N'2020-10-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(26 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Avengers', N'Thanos', CAST(N'2020-10-22T00:00:00.000' AS DateTime), CAST(N'2020-10-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(27 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Iphone', N'Bill', CAST(N'2020-10-23T00:00:00.000' AS DateTime), CAST(N'2020-10-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(28 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'Samsung', N'Penny', CAST(N'2020-10-05T00:00:00.000' AS DateTime), CAST(N'2020-10-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(29 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'AMD', N'CPU', CAST(N'2020-10-02T00:00:00.000' AS DateTime), CAST(N'2020-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(30 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'BENQ', N'Screen', CAST(N'2020-10-07T00:00:00.000' AS DateTime), CAST(N'2020-10-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(31 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'SteelSeries', N'Mat', CAST(N'2020-10-09T00:00:00.000' AS DateTime), CAST(N'2020-10-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(32 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Wakanda', N'Lloyd', CAST(N'2020-10-18T00:00:00.000' AS DateTime), CAST(N'2020-10-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(33 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'MSI', N'Frenny', CAST(N'2020-10-16T00:00:00.000' AS DateTime), CAST(N'2020-10-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(34 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Stole', N'Dole', CAST(N'2020-10-12T00:00:00.000' AS DateTime), CAST(N'2020-10-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(35 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'The Wolf ', N'Fenny', CAST(N'2020-10-11T00:00:00.000' AS DateTime), CAST(N'2020-10-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(36 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Avengers', N'Thanos', CAST(N'2020-10-22T00:00:00.000' AS DateTime), CAST(N'2020-10-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(37 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Iphone', N'Bill', CAST(N'2020-10-23T00:00:00.000' AS DateTime), CAST(N'2020-10-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(38 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'Samsung', N'Penny', CAST(N'2020-10-05T00:00:00.000' AS DateTime), CAST(N'2020-10-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(39 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'AMD', N'CPU', CAST(N'2020-10-02T00:00:00.000' AS DateTime), CAST(N'2020-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(40 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'BENQ', N'Screen', CAST(N'2020-10-07T00:00:00.000' AS DateTime), CAST(N'2020-10-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Knovost] ([id_novost], [adm_id_adminn], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(41 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'SteelSeries', N'Mat', CAST(N'2020-10-09T00:00:00.000' AS DateTime), CAST(N'2020-10-17T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Knovost] OFF
GO
INSERT [dbo].[Mailing] ([Email_Id_Posetitel], [Email_Id_Grupa]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Mailing] ([Email_Id_Posetitel], [Email_Id_Grupa]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Mailing] ([Email_Id_Posetitel], [Email_Id_Grupa]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Mailing] ([Email_Id_Posetitel], [Email_Id_Grupa]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Mailing] ([Email_Id_Posetitel], [Email_Id_Grupa]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[Mailing] ([Email_Id_Posetitel], [Email_Id_Grupa]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[Mailing] ([Email_Id_Posetitel], [Email_Id_Grupa]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Mailing] ([Email_Id_Posetitel], [Email_Id_Grupa]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[Mailing] ([Email_Id_Posetitel], [Email_Id_Grupa]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[Mailing] ([Email_Id_Posetitel], [Email_Id_Grupa]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)))
GO
ALTER TABLE [dbo].[Email_Grupa]  WITH CHECK ADD  CONSTRAINT [FK_Email_Grupa_Jazik] FOREIGN KEY([jazik_id_jazikm])
REFERENCES [dbo].[Jazik] ([id_jazik])
GO
ALTER TABLE [dbo].[Email_Grupa] CHECK CONSTRAINT [FK_Email_Grupa_Jazik]
GO
ALTER TABLE [dbo].[Email_Poraka]  WITH CHECK ADD  CONSTRAINT [FK_Email_Poraka_Email_Grupa] FOREIGN KEY([Grupa_Id_Grupa])
REFERENCES [dbo].[Email_Grupa] ([id_grupa])
GO
ALTER TABLE [dbo].[Email_Poraka] CHECK CONSTRAINT [FK_Email_Poraka_Email_Grupa]
GO
ALTER TABLE [dbo].[Galerija_Opis]  WITH CHECK ADD  CONSTRAINT [FK_Galerija_Opis_Galerija] FOREIGN KEY([gal_id_galerija])
REFERENCES [dbo].[Galerija] ([id_galerija])
GO
ALTER TABLE [dbo].[Galerija_Opis] CHECK CONSTRAINT [FK_Galerija_Opis_Galerija]
GO
ALTER TABLE [dbo].[Galerija_Slika]  WITH CHECK ADD  CONSTRAINT [FK_Galerija_Slika_Galerija] FOREIGN KEY([gal_id_galerijas])
REFERENCES [dbo].[Galerija] ([id_galerija])
GO
ALTER TABLE [dbo].[Galerija_Slika] CHECK CONSTRAINT [FK_Galerija_Slika_Galerija]
GO
ALTER TABLE [dbo].[Kdokument]  WITH CHECK ADD  CONSTRAINT [FK_Kdokument_Jazik] FOREIGN KEY([jazik_id_jazikd])
REFERENCES [dbo].[Jazik] ([id_jazik])
GO
ALTER TABLE [dbo].[Kdokument] CHECK CONSTRAINT [FK_Kdokument_Jazik]
GO
ALTER TABLE [dbo].[Knovost]  WITH CHECK ADD  CONSTRAINT [FK_Knovost_Jazik] FOREIGN KEY([jazik_id_jazikn])
REFERENCES [dbo].[Jazik] ([id_jazik])
GO
ALTER TABLE [dbo].[Knovost] CHECK CONSTRAINT [FK_Knovost_Jazik]
GO
ALTER TABLE [dbo].[Knovost]  WITH CHECK ADD  CONSTRAINT [FK_Knovost_Kadministrator] FOREIGN KEY([adm_id_adminn])
REFERENCES [dbo].[Kadministrator] ([id_admin])
GO
ALTER TABLE [dbo].[Knovost] CHECK CONSTRAINT [FK_Knovost_Kadministrator]
GO
ALTER TABLE [dbo].[Mailing]  WITH CHECK ADD  CONSTRAINT [FK_Mailing_Email] FOREIGN KEY([Email_Id_Posetitel])
REFERENCES [dbo].[Email] ([id_posetitel])
GO
ALTER TABLE [dbo].[Mailing] CHECK CONSTRAINT [FK_Mailing_Email]
GO
ALTER TABLE [dbo].[Mailing]  WITH CHECK ADD  CONSTRAINT [FK_Mailing_Email_Grupa] FOREIGN KEY([Email_Id_Grupa])
REFERENCES [dbo].[Email_Grupa] ([id_grupa])
GO
ALTER TABLE [dbo].[Mailing] CHECK CONSTRAINT [FK_Mailing_Email_Grupa]
GO
/****** Object:  StoredProcedure [dbo].[EXA1]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[EXA1]
@Jazik as INT
AS
SELECT DISTINCT G.naslov, G.opis , G.gal_id_galerija
FROM Galerija_Opis AS G
	INNER JOIN 
	Jazik AS J
		ON G.jazik_id_jazikg = J.jazik
WHERE J.id_jazik = @Jazik
GO
/****** Object:  StoredProcedure [dbo].[EXB1]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--PROCEDURE B
CREATE PROCEDURE [dbo].[EXB1]
@article as nvarchar(50)
AS
SELECT k.jazik_id_jazikn, G.ime
FROM Kadministrator AS G
		inner join
		Knovost AS K
		ON K.adm_id_adminn = G.id_admin
					
WHERE K.naslov = @article
GO
/****** Object:  StoredProcedure [dbo].[EXC1]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[EXC1]
@affiliation as nvarchar(50)
AS
SELECT E.ime, COUNT(M.Email_Id_Grupa) as GroupNum
FROM Email AS E
	INNER JOIN
	Mailing AS M
	on E.id_posetitel = M.Email_Id_Posetitel
GROUP BY ime
ORDER BY GroupNum
GO
/****** Object:  StoredProcedure [dbo].[EXD1]    Script Date: 10/21/2020 5:33:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[EXD1]
AS
SELECT e.naslov, e.tekst
FROM Email_Poraka AS E
	INNER JOIN
	Email_Grupa AS G
		on E.Grupa_Id_Grupa = g.id_grupa
WHERE G.aktivna = 1

GO
USE [master]
GO
ALTER DATABASE [Karavan_4253] SET  READ_WRITE 
GO
