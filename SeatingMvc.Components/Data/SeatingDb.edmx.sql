
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/01/2016 18:19:31
-- Generated from EDMX file: D:\Download\MVC\MVC\MVC test\SeatingMvc.Components\Data\SeatingDb.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SeatingDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[People]', 'U') IS NOT NULL
    DROP TABLE [dbo].[People];
GO
IF OBJECT_ID(N'[dbo].[Tables]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tables];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [PersonId] bigint IDENTITY(1,1) NOT NULL,
    [FirstName] varchar(256)  NOT NULL,
    [Lastname] varchar(256)  NOT NULL,
    [Gender] varchar(10)  NOT NULL,
    [Age] int  NOT NULL
);
GO

-- Creating table 'Tables'
CREATE TABLE [dbo].[Tables] (
    [TableId] bigint IDENTITY(1,1) NOT NULL,
    [TableNum] int  NOT NULL,
    [Title] varchar(50)  NULL,
    [NumberOfSeats] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [PersonId] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([PersonId] ASC);
GO

-- Creating primary key on [TableId] in table 'Tables'
ALTER TABLE [dbo].[Tables]
ADD CONSTRAINT [PK_Tables]
    PRIMARY KEY CLUSTERED ([TableId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------