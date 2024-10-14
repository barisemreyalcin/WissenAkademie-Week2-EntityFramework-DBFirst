
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/09/2024 14:30:50
-- Generated from EDMX file: C:\Users\BEY\Documents\WebDevelopment\Wissen-Akademie\Lectures\022-July02-Tue-EntityFramework\DBFirstSample\ModelFirst\SchoolModelEntities.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SchoolDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'StudentsSet'
CREATE TABLE [dbo].[StudentsSet] (
    [StudentID] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL,
    [Genders_GenderID] int  NOT NULL
);
GO

-- Creating table 'GendersSet'
CREATE TABLE [dbo].[GendersSet] (
    [GenderID] int IDENTITY(1,1) NOT NULL,
    [GenderName] nvarchar(max)  NOT NULL,
    [Status] bit  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [StudentID] in table 'StudentsSet'
ALTER TABLE [dbo].[StudentsSet]
ADD CONSTRAINT [PK_StudentsSet]
    PRIMARY KEY CLUSTERED ([StudentID] ASC);
GO

-- Creating primary key on [GenderID] in table 'GendersSet'
ALTER TABLE [dbo].[GendersSet]
ADD CONSTRAINT [PK_GendersSet]
    PRIMARY KEY CLUSTERED ([GenderID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Genders_GenderID] in table 'StudentsSet'
ALTER TABLE [dbo].[StudentsSet]
ADD CONSTRAINT [FK_GendersStudents]
    FOREIGN KEY ([Genders_GenderID])
    REFERENCES [dbo].[GendersSet]
        ([GenderID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GendersStudents'
CREATE INDEX [IX_FK_GendersStudents]
ON [dbo].[StudentsSet]
    ([Genders_GenderID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------