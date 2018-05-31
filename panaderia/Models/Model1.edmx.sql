
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/30/2018 22:48:56
-- Generated from EDMX file: C:\Users\Sebastian\Documents\GitHub\panaderiaArdilla\panaderia\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_familiaproducto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[productoSet] DROP CONSTRAINT [FK_familiaproducto];
GO
IF OBJECT_ID(N'[dbo].[FK_lineafamilia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[familiaSet] DROP CONSTRAINT [FK_lineafamilia];
GO
IF OBJECT_ID(N'[dbo].[FK_medidadetalle_receta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[detalle_recetaSet] DROP CONSTRAINT [FK_medidadetalle_receta];
GO
IF OBJECT_ID(N'[dbo].[FK_productocompra]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[compraSet] DROP CONSTRAINT [FK_productocompra];
GO
IF OBJECT_ID(N'[dbo].[FK_productodetalle_receta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[detalle_recetaSet] DROP CONSTRAINT [FK_productodetalle_receta];
GO
IF OBJECT_ID(N'[dbo].[FK_proveedorcompra]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[compraSet] DROP CONSTRAINT [FK_proveedorcompra];
GO
IF OBJECT_ID(N'[dbo].[FK_recetadetalle_receta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[detalle_recetaSet] DROP CONSTRAINT [FK_recetadetalle_receta];
GO
IF OBJECT_ID(N'[dbo].[FK_recetaproduccion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[produccionSet] DROP CONSTRAINT [FK_recetaproduccion];
GO
IF OBJECT_ID(N'[dbo].[FK_rolusuariousuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[usuarioSet] DROP CONSTRAINT [FK_rolusuariousuario];
GO
IF OBJECT_ID(N'[dbo].[FK_usuarioproducto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[productoSet] DROP CONSTRAINT [FK_usuarioproducto];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[compraSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[compraSet];
GO
IF OBJECT_ID(N'[dbo].[detalle_recetaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[detalle_recetaSet];
GO
IF OBJECT_ID(N'[dbo].[familiaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[familiaSet];
GO
IF OBJECT_ID(N'[dbo].[linea]', 'U') IS NOT NULL
    DROP TABLE [dbo].[linea];
GO
IF OBJECT_ID(N'[dbo].[medidaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[medidaSet];
GO
IF OBJECT_ID(N'[dbo].[produccionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[produccionSet];
GO
IF OBJECT_ID(N'[dbo].[productoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[productoSet];
GO
IF OBJECT_ID(N'[dbo].[proveedorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[proveedorSet];
GO
IF OBJECT_ID(N'[dbo].[receta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[receta];
GO
IF OBJECT_ID(N'[dbo].[rolusuarioSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[rolusuarioSet];
GO
IF OBJECT_ID(N'[dbo].[usuarioSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[usuarioSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'linea'
CREATE TABLE [dbo].[linea] (
    [Id] int  NOT NULL,
    [nombre] varchar(45)  NULL,
    [creadoel] datetime  NOT NULL,
    [modificadoel] datetime  NOT NULL,
    [estado] smallint  NOT NULL
);
GO

-- Creating table 'receta'
CREATE TABLE [dbo].[receta] (
    [Id] int  NOT NULL,
    [nombre] nvarchar(max)  NOT NULL,
    [estado] smallint  NOT NULL
);
GO

-- Creating table 'productoSet'
CREATE TABLE [dbo].[productoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL,
    [marca] nvarchar(max)  NOT NULL,
    [formato] int  NOT NULL,
    [creadoel] datetime  NOT NULL,
    [modificadoel] datetime  NOT NULL,
    [estado] smallint  NOT NULL,
    [lineaId] int  NOT NULL,
    [recetaId] int  NOT NULL,
    [familiaId] int  NOT NULL,
    [usuarioId] int  NOT NULL,
    [stock] int  NOT NULL,
    [precio_venta] nvarchar(max)  NOT NULL,
    [medidaId] int  NOT NULL
);
GO

-- Creating table 'detalle_recetaSet'
CREATE TABLE [dbo].[detalle_recetaSet] (
    [cantidad] decimal(18,0)  NOT NULL,
    [recetaId] int  NOT NULL,
    [productoId] int  NOT NULL,
    [estado] smallint  NOT NULL,
    [medidaId] int  NOT NULL
);
GO

-- Creating table 'familiaSet'
CREATE TABLE [dbo].[familiaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL,
    [creadoel] datetime  NOT NULL,
    [modificadoel] datetime  NOT NULL,
    [estado] smallint  NOT NULL,
    [lineaId] int  NOT NULL
);
GO

-- Creating table 'usuarioSet'
CREATE TABLE [dbo].[usuarioSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL,
    [clave] nvarchar(max)  NOT NULL,
    [rolusuarioId] int  NOT NULL
);
GO

-- Creating table 'rolusuarioSet'
CREATE TABLE [dbo].[rolusuarioSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [rol] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'proveedorSet'
CREATE TABLE [dbo].[proveedorSet] (
    [rut] int IDENTITY(1,1) NOT NULL,
    [validador] nvarchar(max)  NOT NULL,
    [nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'compraSet'
CREATE TABLE [dbo].[compraSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [cantidad] int  NOT NULL,
    [precio_neto] int  NOT NULL,
    [proveedor_rut] int  NOT NULL,
    [productoId] int  NOT NULL
);
GO

-- Creating table 'produccionSet'
CREATE TABLE [dbo].[produccionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [fecha_produccion] datetime  NOT NULL,
    [recetaId] int  NOT NULL,
    [valor] int  NOT NULL
);
GO

-- Creating table 'medidaSet'
CREATE TABLE [dbo].[medidaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'linea'
ALTER TABLE [dbo].[linea]
ADD CONSTRAINT [PK_linea]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'receta'
ALTER TABLE [dbo].[receta]
ADD CONSTRAINT [PK_receta]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'productoSet'
ALTER TABLE [dbo].[productoSet]
ADD CONSTRAINT [PK_productoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [recetaId], [productoId] in table 'detalle_recetaSet'
ALTER TABLE [dbo].[detalle_recetaSet]
ADD CONSTRAINT [PK_detalle_recetaSet]
    PRIMARY KEY CLUSTERED ([recetaId], [productoId] ASC);
GO

-- Creating primary key on [Id] in table 'familiaSet'
ALTER TABLE [dbo].[familiaSet]
ADD CONSTRAINT [PK_familiaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'usuarioSet'
ALTER TABLE [dbo].[usuarioSet]
ADD CONSTRAINT [PK_usuarioSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'rolusuarioSet'
ALTER TABLE [dbo].[rolusuarioSet]
ADD CONSTRAINT [PK_rolusuarioSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [rut] in table 'proveedorSet'
ALTER TABLE [dbo].[proveedorSet]
ADD CONSTRAINT [PK_proveedorSet]
    PRIMARY KEY CLUSTERED ([rut] ASC);
GO

-- Creating primary key on [Id] in table 'compraSet'
ALTER TABLE [dbo].[compraSet]
ADD CONSTRAINT [PK_compraSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'produccionSet'
ALTER TABLE [dbo].[produccionSet]
ADD CONSTRAINT [PK_produccionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'medidaSet'
ALTER TABLE [dbo].[medidaSet]
ADD CONSTRAINT [PK_medidaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [recetaId] in table 'detalle_recetaSet'
ALTER TABLE [dbo].[detalle_recetaSet]
ADD CONSTRAINT [FK_recetadetalle_receta]
    FOREIGN KEY ([recetaId])
    REFERENCES [dbo].[receta]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [productoId] in table 'detalle_recetaSet'
ALTER TABLE [dbo].[detalle_recetaSet]
ADD CONSTRAINT [FK_productodetalle_receta]
    FOREIGN KEY ([productoId])
    REFERENCES [dbo].[productoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_productodetalle_receta'
CREATE INDEX [IX_FK_productodetalle_receta]
ON [dbo].[detalle_recetaSet]
    ([productoId]);
GO

-- Creating foreign key on [lineaId] in table 'familiaSet'
ALTER TABLE [dbo].[familiaSet]
ADD CONSTRAINT [FK_lineafamilia]
    FOREIGN KEY ([lineaId])
    REFERENCES [dbo].[linea]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_lineafamilia'
CREATE INDEX [IX_FK_lineafamilia]
ON [dbo].[familiaSet]
    ([lineaId]);
GO

-- Creating foreign key on [familiaId] in table 'productoSet'
ALTER TABLE [dbo].[productoSet]
ADD CONSTRAINT [FK_familiaproducto]
    FOREIGN KEY ([familiaId])
    REFERENCES [dbo].[familiaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_familiaproducto'
CREATE INDEX [IX_FK_familiaproducto]
ON [dbo].[productoSet]
    ([familiaId]);
GO

-- Creating foreign key on [usuarioId] in table 'productoSet'
ALTER TABLE [dbo].[productoSet]
ADD CONSTRAINT [FK_usuarioproducto]
    FOREIGN KEY ([usuarioId])
    REFERENCES [dbo].[usuarioSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_usuarioproducto'
CREATE INDEX [IX_FK_usuarioproducto]
ON [dbo].[productoSet]
    ([usuarioId]);
GO

-- Creating foreign key on [rolusuarioId] in table 'usuarioSet'
ALTER TABLE [dbo].[usuarioSet]
ADD CONSTRAINT [FK_rolusuariousuario]
    FOREIGN KEY ([rolusuarioId])
    REFERENCES [dbo].[rolusuarioSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_rolusuariousuario'
CREATE INDEX [IX_FK_rolusuariousuario]
ON [dbo].[usuarioSet]
    ([rolusuarioId]);
GO

-- Creating foreign key on [proveedor_rut] in table 'compraSet'
ALTER TABLE [dbo].[compraSet]
ADD CONSTRAINT [FK_proveedorcompra]
    FOREIGN KEY ([proveedor_rut])
    REFERENCES [dbo].[proveedorSet]
        ([rut])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_proveedorcompra'
CREATE INDEX [IX_FK_proveedorcompra]
ON [dbo].[compraSet]
    ([proveedor_rut]);
GO

-- Creating foreign key on [productoId] in table 'compraSet'
ALTER TABLE [dbo].[compraSet]
ADD CONSTRAINT [FK_productocompra]
    FOREIGN KEY ([productoId])
    REFERENCES [dbo].[productoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_productocompra'
CREATE INDEX [IX_FK_productocompra]
ON [dbo].[compraSet]
    ([productoId]);
GO

-- Creating foreign key on [medidaId] in table 'detalle_recetaSet'
ALTER TABLE [dbo].[detalle_recetaSet]
ADD CONSTRAINT [FK_medidadetalle_receta]
    FOREIGN KEY ([medidaId])
    REFERENCES [dbo].[medidaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_medidadetalle_receta'
CREATE INDEX [IX_FK_medidadetalle_receta]
ON [dbo].[detalle_recetaSet]
    ([medidaId]);
GO

-- Creating foreign key on [recetaId] in table 'produccionSet'
ALTER TABLE [dbo].[produccionSet]
ADD CONSTRAINT [FK_recetaproduccion]
    FOREIGN KEY ([recetaId])
    REFERENCES [dbo].[receta]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_recetaproduccion'
CREATE INDEX [IX_FK_recetaproduccion]
ON [dbo].[produccionSet]
    ([recetaId]);
GO

-- Creating foreign key on [medidaId] in table 'productoSet'
ALTER TABLE [dbo].[productoSet]
ADD CONSTRAINT [FK_medidaproducto]
    FOREIGN KEY ([medidaId])
    REFERENCES [dbo].[medidaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_medidaproducto'
CREATE INDEX [IX_FK_medidaproducto]
ON [dbo].[productoSet]
    ([medidaId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------