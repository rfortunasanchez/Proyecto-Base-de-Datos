/****** Raquel Fortuna Sanchez 16-MIIT-1-031 Seccion 0541******/
/****** PC-hpRaquel******/


USE [master]
GO
/****** Object:  Database [DBbanco]    Script Date: 8/5/2018 11:24:14 PM ******/
CREATE DATABASE [DBbanco]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBbanco', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.IVANPC\MSSQL\DATA\DBbanco.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBbanco_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.IVANPC\MSSQL\DATA\DBbanco_log.ldf' , SIZE = 560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBbanco] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBbanco].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBbanco] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBbanco] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBbanco] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBbanco] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBbanco] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBbanco] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBbanco] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBbanco] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBbanco] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBbanco] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBbanco] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBbanco] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBbanco] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBbanco] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBbanco] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBbanco] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBbanco] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBbanco] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBbanco] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBbanco] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBbanco] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBbanco] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBbanco] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBbanco] SET  MULTI_USER 
GO
ALTER DATABASE [DBbanco] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBbanco] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBbanco] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBbanco] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBbanco] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DBbanco]
GO
/****** Object:  Table [dbo].[Ahorros]    Script Date: 8/5/2018 11:24:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ahorros](
	[ID] [int] NULL,
	[Cantidad] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Info_clientes]    Script Date: 8/5/2018 11:24:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info_clientes](
	[ID] [int] NOT NULL,
	[Nombre] [nvarchar](25) NULL,
	[Fiabilidad] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 8/5/2018 11:24:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamos](
	[ID] [int] NOT NULL,
	[Cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Ahorros] ([ID], [Cantidad]) VALUES (1, 1000)
INSERT [dbo].[Ahorros] ([ID], [Cantidad]) VALUES (2, 2000)
INSERT [dbo].[Ahorros] ([ID], [Cantidad]) VALUES (3, 3000)
INSERT [dbo].[Ahorros] ([ID], [Cantidad]) VALUES (4, 4000)
INSERT [dbo].[Ahorros] ([ID], [Cantidad]) VALUES (5, 5000)
INSERT [dbo].[Ahorros] ([ID], [Cantidad]) VALUES (6, 6000)
INSERT [dbo].[Ahorros] ([ID], [Cantidad]) VALUES (7, 7000)
INSERT [dbo].[Ahorros] ([ID], [Cantidad]) VALUES (8, 8000)
INSERT [dbo].[Ahorros] ([ID], [Cantidad]) VALUES (9, 9000)
INSERT [dbo].[Ahorros] ([ID], [Cantidad]) VALUES (10, 10000)
INSERT [dbo].[Info_clientes] ([ID], [Nombre], [Fiabilidad]) VALUES (1, N'Juan', N'A')
INSERT [dbo].[Info_clientes] ([ID], [Nombre], [Fiabilidad]) VALUES (2, N'Pablo', N'A')
INSERT [dbo].[Info_clientes] ([ID], [Nombre], [Fiabilidad]) VALUES (3, N'Pedro', N'A')
INSERT [dbo].[Info_clientes] ([ID], [Nombre], [Fiabilidad]) VALUES (4, N'Maria', N'B')
INSERT [dbo].[Info_clientes] ([ID], [Nombre], [Fiabilidad]) VALUES (5, N'Jose', N'B')
INSERT [dbo].[Info_clientes] ([ID], [Nombre], [Fiabilidad]) VALUES (6, N'Carlos', N'C')
INSERT [dbo].[Info_clientes] ([ID], [Nombre], [Fiabilidad]) VALUES (7, N'Josefina', N'C')
INSERT [dbo].[Info_clientes] ([ID], [Nombre], [Fiabilidad]) VALUES (8, N'Juana', N'A')
INSERT [dbo].[Info_clientes] ([ID], [Nombre], [Fiabilidad]) VALUES (9, N'Kiara', N'A')
INSERT [dbo].[Info_clientes] ([ID], [Nombre], [Fiabilidad]) VALUES (10, N'Ken', N'A')
INSERT [dbo].[Prestamos] ([ID], [Cantidad]) VALUES (1, 10000)
INSERT [dbo].[Prestamos] ([ID], [Cantidad]) VALUES (2, 9000)
INSERT [dbo].[Prestamos] ([ID], [Cantidad]) VALUES (3, 8000)
INSERT [dbo].[Prestamos] ([ID], [Cantidad]) VALUES (4, 7000)
INSERT [dbo].[Prestamos] ([ID], [Cantidad]) VALUES (5, 6000)
INSERT [dbo].[Prestamos] ([ID], [Cantidad]) VALUES (6, 5000)
INSERT [dbo].[Prestamos] ([ID], [Cantidad]) VALUES (7, 4000)
INSERT [dbo].[Prestamos] ([ID], [Cantidad]) VALUES (8, 3000)
INSERT [dbo].[Prestamos] ([ID], [Cantidad]) VALUES (9, 2000)
INSERT [dbo].[Prestamos] ([ID], [Cantidad]) VALUES (10, 1000)
USE [master]
GO
ALTER DATABASE [DBbanco] SET  READ_WRITE 
GO
