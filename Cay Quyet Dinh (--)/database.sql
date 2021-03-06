USE [master]
GO
/****** Object:  Database [ID3]    Script Date: 1/15/2021 9:17:41 PM ******/
CREATE DATABASE [ID3] ON  PRIMARY 
( NAME = N'ID3', FILENAME = N'C:\DATA_LOG\ID3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ID3_log', FILENAME = N'C:\DATA_LOG\ID3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ID3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ID3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ID3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ID3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ID3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ID3] SET ARITHABORT OFF 
GO
ALTER DATABASE [ID3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ID3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ID3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ID3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ID3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ID3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ID3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ID3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ID3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ID3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ID3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ID3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ID3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ID3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ID3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ID3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ID3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ID3] SET RECOVERY FULL 
GO
ALTER DATABASE [ID3] SET  MULTI_USER 
GO
ALTER DATABASE [ID3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ID3] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ID3', N'ON'
GO
USE [ID3]
GO
/****** Object:  Table [dbo].[Entropy]    Script Date: 1/15/2021 9:17:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entropy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HinhDang] [nvarchar](50) NULL,
	[ChieuCao] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[KetQua] [nvarchar](50) NULL,
 CONSTRAINT [PK_Entropy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Entropy] ON 

INSERT [dbo].[Entropy] ([Id], [HinhDang], [ChieuCao], [GioiTinh], [KetQua]) VALUES (1, N'to', N'trung bình', N'nam', N'châu á')
INSERT [dbo].[Entropy] ([Id], [HinhDang], [ChieuCao], [GioiTinh], [KetQua]) VALUES (2, N'nhỏ', N'thấp', N'nam', N'châu á')
INSERT [dbo].[Entropy] ([Id], [HinhDang], [ChieuCao], [GioiTinh], [KetQua]) VALUES (3, N'nhỏ', N'trung bình', N'nam', N'châu á')
INSERT [dbo].[Entropy] ([Id], [HinhDang], [ChieuCao], [GioiTinh], [KetQua]) VALUES (4, N'to', N'cao', N'nam', N'châu âu')
INSERT [dbo].[Entropy] ([Id], [HinhDang], [ChieuCao], [GioiTinh], [KetQua]) VALUES (5, N'nhỏ', N'trung bình', N'nữ', N'châu âu')
INSERT [dbo].[Entropy] ([Id], [HinhDang], [ChieuCao], [GioiTinh], [KetQua]) VALUES (6, N'nhỏ', N'cao', N'nam', N'châu âu')
INSERT [dbo].[Entropy] ([Id], [HinhDang], [ChieuCao], [GioiTinh], [KetQua]) VALUES (7, N'nhỏ', N'cao', N'nữ', N'châu âu')
INSERT [dbo].[Entropy] ([Id], [HinhDang], [ChieuCao], [GioiTinh], [KetQua]) VALUES (8, N'to', N'trung bình', N'nữ', N'châu âu')
SET IDENTITY_INSERT [dbo].[Entropy] OFF
GO
USE [master]
GO
ALTER DATABASE [ID3] SET  READ_WRITE 
GO
