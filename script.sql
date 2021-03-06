USE [ventas]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 03/22/2017 11:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[cliente](
	[idCliente] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[apPaterno] [varchar](30) NOT NULL,
	[apMaterno] [varchar](30) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](30) NOT NULL,
	[ced] [numeric](8, 0) NOT NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ced] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 03/22/2017 11:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[idCategoria] [nvarchar](5) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__categori__8A3D240C1538A73E] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modoPago]    Script Date: 03/22/2017 11:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modoPago](
	[numPago] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](25) NOT NULL,
	[otroDetalles] [nvarchar](50) NULL,
 CONSTRAINT [PK__modoPago__56E7C501338E87C8] PRIMARY KEY CLUSTERED 
(
	[numPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vendedor]    Script Date: 03/22/2017 11:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vendedor](
	[idVendedor] [nvarchar](5) NOT NULL,
	[nombre] [nvarchar](30) NOT NULL,
	[apPaterno] [nvarchar](30) NOT NULL,
	[apMaterno] [nvarchar](30) NOT NULL,
	[ced] [nvarchar](8) NOT NULL,
	[telefono] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK__vendedor__A6693F936F5918BB] PRIMARY KEY CLUSTERED 
(
	[idVendedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 03/22/2017 11:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[idVenta] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[total] [real] NOT NULL,
	[idCliente] [numeric](18, 0) NOT NULL,
	[idVendedor] [nvarchar](5) NOT NULL,
	[fecha] [date] NOT NULL,
	[descuento] [money] NULL,
	[IVA] [money] NOT NULL,
 CONSTRAINT [PK__pedido__A9F619B72DC663B9] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 03/22/2017 11:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[idProducto] [nvarchar](5) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[precioUnitario] [money] NOT NULL,
	[idCategoria] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK__producto__07F4A132F0C57D04] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 03/22/2017 11:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[numFactura] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[IVA] [real] NOT NULL,
	[total] [real] NOT NULL,
	[numPago] [int] NOT NULL,
	[descuento] [money] NULL,
 CONSTRAINT [PK__factura__C989668BFDF3359B] PRIMARY KEY CLUSTERED 
(
	[numFactura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalleVenta]    Script Date: 03/22/2017 11:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleVenta](
	[idDetalle] [int] IDENTITY(1,1) NOT NULL,
	[numFactura] [numeric](18, 0) NOT NULL,
	[idVenta] [numeric](18, 0) NOT NULL,
	[subTotal] [real] NOT NULL,
	[idProducto] [nvarchar](5) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_detalleVenta] PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC,
	[numFactura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__detalleFa__idPed__239E4DCF]    Script Date: 03/22/2017 11:58:41 ******/
ALTER TABLE [dbo].[detalleVenta]  WITH CHECK ADD  CONSTRAINT [FK__detalleFa__idPed__239E4DCF] FOREIGN KEY([idVenta])
REFERENCES [dbo].[venta] ([idVenta])
GO
ALTER TABLE [dbo].[detalleVenta] CHECK CONSTRAINT [FK__detalleFa__idPed__239E4DCF]
GO
/****** Object:  ForeignKey [FK_detalleFactura_factura]    Script Date: 03/22/2017 11:58:41 ******/
ALTER TABLE [dbo].[detalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_detalleFactura_factura] FOREIGN KEY([numFactura])
REFERENCES [dbo].[factura] ([numFactura])
GO
ALTER TABLE [dbo].[detalleVenta] CHECK CONSTRAINT [FK_detalleFactura_factura]
GO
/****** Object:  ForeignKey [FK_detalleFactura_producto]    Script Date: 03/22/2017 11:58:41 ******/
ALTER TABLE [dbo].[detalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_detalleFactura_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([idProducto])
GO
ALTER TABLE [dbo].[detalleVenta] CHECK CONSTRAINT [FK_detalleFactura_producto]
GO
/****** Object:  ForeignKey [FK_factura_modoPago]    Script Date: 03/22/2017 11:58:41 ******/
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK_factura_modoPago] FOREIGN KEY([numPago])
REFERENCES [dbo].[modoPago] ([numPago])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK_factura_modoPago]
GO
/****** Object:  ForeignKey [FK__producto__idCate__164452B1]    Script Date: 03/22/2017 11:58:41 ******/
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK__producto__idCate__164452B1] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK__producto__idCate__164452B1]
GO
/****** Object:  ForeignKey [FK_venta_cliente]    Script Date: 03/22/2017 11:58:41 ******/
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[cliente] ([idCliente])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_cliente]
GO
/****** Object:  ForeignKey [FK_venta_vendedor]    Script Date: 03/22/2017 11:58:41 ******/
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_vendedor] FOREIGN KEY([idVendedor])
REFERENCES [dbo].[vendedor] ([idVendedor])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_vendedor]
GO
