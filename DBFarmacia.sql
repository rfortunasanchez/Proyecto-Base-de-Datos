/****** Raquel Fortuna Sanchez 16-MIIT-1-031 Seccion 0541******/
/****** PC-hpRaquel******/


CREATE DATABASE [DBfarmacia]

GO

USE [DBfarmacia]

GO

CREATE TABLE [dbo].[Almacen](
	[ID] [int] NULL,
	[Cantidad] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[medicamentos]    Script Date: 8/5/2018 10:38:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicamentos](
	[ID] [int] NOT NULL,
	[Medicamento] [nvarchar](25) NULL,
	[Precio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pedidos]    Script Date: 8/5/2018 10:38:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedidos](
	[ID] [int] References medicamentos(ID),
	[Cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Almacen] ([ID], [Cantidad]) VALUES (1, 100)
INSERT [dbo].[Almacen] ([ID], [Cantidad]) VALUES (2, 200)
INSERT [dbo].[Almacen] ([ID], [Cantidad]) VALUES (3, 500)
INSERT [dbo].[Almacen] ([ID], [Cantidad]) VALUES (4, 300)
INSERT [dbo].[Almacen] ([ID], [Cantidad]) VALUES (5, 2000)
INSERT [dbo].[Almacen] ([ID], [Cantidad]) VALUES (6, 3000)
INSERT [dbo].[Almacen] ([ID], [Cantidad]) VALUES (7, 40)
INSERT [dbo].[Almacen] ([ID], [Cantidad]) VALUES (8, 30)
INSERT [dbo].[Almacen] ([ID], [Cantidad]) VALUES (9, 423)
INSERT [dbo].[Almacen] ([ID], [Cantidad]) VALUES (10, 45)
INSERT [dbo].[Almacen] ([ID], [Cantidad]) VALUES (NULL, NULL)
INSERT [dbo].[medicamentos] ([ID], [Medicamento], [Precio]) VALUES (1, N'Aspirina', 50)
INSERT [dbo].[medicamentos] ([ID], [Medicamento], [Precio]) VALUES (2, N'Acetaminofen', 25)
INSERT [dbo].[medicamentos] ([ID], [Medicamento], [Precio]) VALUES (3, N'Ibuprofen', 30)
INSERT [dbo].[medicamentos] ([ID], [Medicamento], [Precio]) VALUES (4, N'Calcio', 20)
INSERT [dbo].[medicamentos] ([ID], [Medicamento], [Precio]) VALUES (5, N'Fosfo B12', 10)
INSERT [dbo].[medicamentos] ([ID], [Medicamento], [Precio]) VALUES (6, N'Ampicilina 500', 60)
INSERT [dbo].[medicamentos] ([ID], [Medicamento], [Precio]) VALUES (7, N'Inyecciones', 100)
INSERT [dbo].[medicamentos] ([ID], [Medicamento], [Precio]) VALUES (8, N'Geringas', 100)
INSERT [dbo].[medicamentos] ([ID], [Medicamento], [Precio]) VALUES (9, N'Diclofenac', 5)
INSERT [dbo].[medicamentos] ([ID], [Medicamento], [Precio]) VALUES (10, N'Loratadina', 2)
INSERT [dbo].[pedidos] ([ID], [Cantidad]) VALUES (1, 12)
INSERT [dbo].[pedidos] ([ID], [Cantidad]) VALUES (2, 13)
INSERT [dbo].[pedidos] ([ID], [Cantidad]) VALUES (3, 15)
INSERT [dbo].[pedidos] ([ID], [Cantidad]) VALUES (4, 16)
INSERT [dbo].[pedidos] ([ID], [Cantidad]) VALUES (5, 100)
INSERT [dbo].[pedidos] ([ID], [Cantidad]) VALUES (6, 1000)
INSERT [dbo].[pedidos] ([ID], [Cantidad]) VALUES (7, 1233)
INSERT [dbo].[pedidos] ([ID], [Cantidad]) VALUES (8, 45)
INSERT [dbo].[pedidos] ([ID], [Cantidad]) VALUES (9, 6778)
INSERT [dbo].[pedidos] ([ID], [Cantidad]) VALUES (10, 86)
USE [master]
GO
ALTER DATABASE [DBfarmacia] SET  READ_WRITE 
GO
