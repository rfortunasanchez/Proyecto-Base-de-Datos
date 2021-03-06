/****** Raquel Fortuna Sanchez 16-MIIT-1-031 Seccion 0541******/
/****** PC-hpRaquel******/

CREATE DATABASE [DBEmpresa]

Go
USE [DBEmpresa]
GO

CREATE TABLE [dbo].[Descuento](
	[Id] [int] NULL,
	[Cantidad] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Info_empleados]    Script Date: 8/5/2018 10:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info_empleados](
	[Id] [int] NOT NULL,
	[Nombre] [nvarchar](25) NULL,
	[Cargo] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sueldo]    Script Date: 8/5/2018 10:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sueldo](
	[Id] [int] References Info_empleados(Id),
	[Sueldo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Descuento] ([Id], [Cantidad]) VALUES (1, 1000)
INSERT [dbo].[Descuento] ([Id], [Cantidad]) VALUES (2, 900)
INSERT [dbo].[Descuento] ([Id], [Cantidad]) VALUES (3, 800)
INSERT [dbo].[Descuento] ([Id], [Cantidad]) VALUES (4, 700)
INSERT [dbo].[Descuento] ([Id], [Cantidad]) VALUES (5, 700)
INSERT [dbo].[Descuento] ([Id], [Cantidad]) VALUES (6, 500)
INSERT [dbo].[Descuento] ([Id], [Cantidad]) VALUES (7, 500)
INSERT [dbo].[Descuento] ([Id], [Cantidad]) VALUES (8, 500)
INSERT [dbo].[Descuento] ([Id], [Cantidad]) VALUES (9, 500)
INSERT [dbo].[Descuento] ([Id], [Cantidad]) VALUES (10, 500)
INSERT [dbo].[Info_empleados] ([Id], [Nombre], [Cargo]) VALUES (1, N'Juan', N'Gerente')
INSERT [dbo].[Info_empleados] ([Id], [Nombre], [Cargo]) VALUES (2, N'Pedro', N'Supervisor')
INSERT [dbo].[Info_empleados] ([Id], [Nombre], [Cargo]) VALUES (3, N'Pablo', N'Contador')
INSERT [dbo].[Info_empleados] ([Id], [Nombre], [Cargo]) VALUES (4, N'Jose', N'Tecnico')
INSERT [dbo].[Info_empleados] ([Id], [Nombre], [Cargo]) VALUES (5, N'Nero', N'Tecnico')
INSERT [dbo].[Info_empleados] ([Id], [Nombre], [Cargo]) VALUES (6, N'Carlos', N'Operador')
INSERT [dbo].[Info_empleados] ([Id], [Nombre], [Cargo]) VALUES (7, N'Gabriel', N'Operador')
INSERT [dbo].[Info_empleados] ([Id], [Nombre], [Cargo]) VALUES (8, N'Alejandro', N'Operador')
INSERT [dbo].[Info_empleados] ([Id], [Nombre], [Cargo]) VALUES (9, N'Juana', N'Operador')
INSERT [dbo].[Info_empleados] ([Id], [Nombre], [Cargo]) VALUES (10, NULL, N'Operador')
INSERT [dbo].[Sueldo] ([Id], [Sueldo]) VALUES (1, 200000)
INSERT [dbo].[Sueldo] ([Id], [Sueldo]) VALUES (2, 100000)
INSERT [dbo].[Sueldo] ([Id], [Sueldo]) VALUES (3, 9000)
INSERT [dbo].[Sueldo] ([Id], [Sueldo]) VALUES (4, 8000)
INSERT [dbo].[Sueldo] ([Id], [Sueldo]) VALUES (5, 7000)
INSERT [dbo].[Sueldo] ([Id], [Sueldo]) VALUES (6, 7000)
INSERT [dbo].[Sueldo] ([Id], [Sueldo]) VALUES (7, 5000)
INSERT [dbo].[Sueldo] ([Id], [Sueldo]) VALUES (8, 5000)
INSERT [dbo].[Sueldo] ([Id], [Sueldo]) VALUES (9, 5000)
INSERT [dbo].[Sueldo] ([Id], [Sueldo]) VALUES (10, 5000)
USE [master]
GO
ALTER DATABASE [DBEmpresa] SET  READ_WRITE 
GO
