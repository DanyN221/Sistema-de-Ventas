USE [master]
GO

-- Esto borra la BD si quedó a medias de tus intentos anteriores
IF DB_ID('BDVentas') IS NOT NULL
BEGIN
    ALTER DATABASE [BDVentas] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [BDVentas];
END
GO

-- 1. Crear la base de datos (SIN la ruta de Program Files, para que LocalDB la guarde en su lugar seguro)
CREATE DATABASE [BDVentas];
GO

-- 2. Entrar a la base de datos
USE [BDVentas];
GO

-- 3. Crear la tabla
CREATE TABLE [dbo].[Producto](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
	[Precio] [decimal](10, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- 4. Insertar los datos
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Categoria], [Precio], [Stock], [Activo]) VALUES (1, N'Inca Kola 500ml', N'Bebidas', CAST(2.50 AS Decimal(10, 2)), 40, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Categoria], [Precio], [Stock], [Activo]) VALUES (2, N'Coca Cola 500ml', N'Bebidas', CAST(2.50 AS Decimal(10, 2)), 35, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Categoria], [Precio], [Stock], [Activo]) VALUES (3, N'Papas Lays', N'Snacks', CAST(1.50 AS Decimal(10, 2)), 60, 1)
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Categoria], [Precio], [Stock], [Activo]) VALUES (4, N'Leche Gloria', N'Lácteos', CAST(4.20 AS Decimal(10, 2)), 50, 1)

SET IDENTITY_INSERT [dbo].[Producto] OFF
GO

-- 5. Mostrar los datos para comprobar que todo salió bien
SELECT * FROM [dbo].[Producto];
GO