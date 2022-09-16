
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/15/2022 11:32:31
-- Generated from EDMX file: C:\Users\Admin\source\repos\Inventory-Management-System\IMS_Final_Version2\Models\dbModel\dbModelEntity.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [db_IMS];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__tblItem__Invento__182C9B23]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblItems] DROP CONSTRAINT [FK__tblItem__Invento__182C9B23];
GO
IF OBJECT_ID(N'[dbo].[FK__tblLeftPa__Inven__1DE57479]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblLeftPages] DROP CONSTRAINT [FK__tblLeftPa__Inven__1DE57479];
GO
IF OBJECT_ID(N'[dbo].[FK__tblItem__SectorI__173876EA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblItems] DROP CONSTRAINT [FK__tblItem__SectorI__173876EA];
GO
IF OBJECT_ID(N'[dbo].[FK__tblRightP__ItemI__2C3393D0]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblRightPages] DROP CONSTRAINT [FK__tblRightP__ItemI__2C3393D0];
GO
IF OBJECT_ID(N'[dbo].[FK__tblLeftPa__Secto__1CF15040]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblLeftPages] DROP CONSTRAINT [FK__tblLeftPa__Secto__1CF15040];
GO
IF OBJECT_ID(N'[dbo].[FK__tblLeftPa__Vouch__1ED998B2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblLeftPages] DROP CONSTRAINT [FK__tblLeftPa__Vouch__1ED998B2];
GO
IF OBJECT_ID(N'[dbo].[FK__tblRightP__PageI__2B3F6F97]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblRightPages] DROP CONSTRAINT [FK__tblRightP__PageI__2B3F6F97];
GO
IF OBJECT_ID(N'[dbo].[FK__tblNotifi__Recei__22AA2996]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblNotifications] DROP CONSTRAINT [FK__tblNotifi__Recei__22AA2996];
GO
IF OBJECT_ID(N'[dbo].[FK__tblNotifi__Sende__21B6055D]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblNotifications] DROP CONSTRAINT [FK__tblNotifi__Sende__21B6055D];
GO
IF OBJECT_ID(N'[dbo].[FK__tblRequis__Notif__286302EC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblRequisitionSlips] DROP CONSTRAINT [FK__tblRequis__Notif__286302EC];
GO
IF OBJECT_ID(N'[dbo].[FK__tblReport__Secto__30F848ED]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblReports] DROP CONSTRAINT [FK__tblReport__Secto__30F848ED];
GO
IF OBJECT_ID(N'[dbo].[FK__tblRequis__Appli__25869641]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblRequisitionSlips] DROP CONSTRAINT [FK__tblRequis__Appli__25869641];
GO
IF OBJECT_ID(N'[dbo].[FK__tblRequis__Direc__276EDEB3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblRequisitionSlips] DROP CONSTRAINT [FK__tblRequis__Direc__276EDEB3];
GO
IF OBJECT_ID(N'[dbo].[FK__tblRequis__Recom__267ABA7A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblRequisitionSlips] DROP CONSTRAINT [FK__tblRequis__Recom__267ABA7A];
GO
IF OBJECT_ID(N'[dbo].[FK__tblRightP__Requi__2E1BDC42]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblRightPages] DROP CONSTRAINT [FK__tblRightP__Requi__2E1BDC42];
GO
IF OBJECT_ID(N'[dbo].[FK__tblRightP__UserI__2D27B809]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblRightPages] DROP CONSTRAINT [FK__tblRightP__UserI__2D27B809];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tblInventories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblInventories];
GO
IF OBJECT_ID(N'[dbo].[tblItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblItems];
GO
IF OBJECT_ID(N'[dbo].[tblLeftPages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblLeftPages];
GO
IF OBJECT_ID(N'[dbo].[tblNotifications]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblNotifications];
GO
IF OBJECT_ID(N'[dbo].[tblReports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblReports];
GO
IF OBJECT_ID(N'[dbo].[tblRequisitionSlips]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblRequisitionSlips];
GO
IF OBJECT_ID(N'[dbo].[tblRightPages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblRightPages];
GO
IF OBJECT_ID(N'[dbo].[tblSectors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblSectors];
GO
IF OBJECT_ID(N'[dbo].[tblUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblUsers];
GO
IF OBJECT_ID(N'[dbo].[tblVouchars]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblVouchars];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tblInventories'
CREATE TABLE [dbo].[tblInventories] (
    [InventoryId] int IDENTITY(1,1) NOT NULL,
    [InventoryName] varchar(50)  NULL,
    [InventoryDescription] varchar(1000)  NULL,
    [InventoryPicturePath] varchar(500)  NULL
);
GO

-- Creating table 'tblItems'
CREATE TABLE [dbo].[tblItems] (
    [ItemId] int IDENTITY(1,1) NOT NULL,
    [ItemDescription] varchar(1000)  NULL,
    [IsPicked] int  NULL,
    [SectorId] int  NULL,
    [InventoryId] int  NULL
);
GO

-- Creating table 'tblLeftPages'
CREATE TABLE [dbo].[tblLeftPages] (
    [PageId] int IDENTITY(1,1) NOT NULL,
    [ReceiveingInfo] varchar(1000)  NULL,
    [ReceivingSerial] int  NULL,
    [ReceivingDate] datetime  NULL,
    [PreviousBalance] int  NULL,
    [NoOfReceivingArticles] int  NULL,
    [TotalBalance] int  NULL,
    [SectorId] int  NULL,
    [InventoryId] int  NULL,
    [VoucharId] int  NULL
);
GO

-- Creating table 'tblNotifications'
CREATE TABLE [dbo].[tblNotifications] (
    [NotificationId] int IDENTITY(1,1) NOT NULL,
    [SenderId] int  NULL,
    [ReceiverId] int  NULL,
    [NotificationDate] datetime  NULL,
    [NotificationBody] varchar(1000)  NULL,
    [IsSeen] int  NULL
);
GO

-- Creating table 'tblReports'
CREATE TABLE [dbo].[tblReports] (
    [ReportId] int IDENTITY(1,1) NOT NULL,
    [SectorId] int  NULL,
    [ReportTitle] varchar(100)  NULL,
    [ReportDate] datetime  NULL,
    [ReportFilePath] varchar(500)  NULL
);
GO

-- Creating table 'tblRequisitionSlips'
CREATE TABLE [dbo].[tblRequisitionSlips] (
    [RequisitionSlipId] int IDENTITY(1,1) NOT NULL,
    [RequisitionDate] datetime  NULL,
    [IssuingPurpose] varchar(500)  NULL,
    [AllInventoryNameWithAmount] varchar(1000)  NULL,
    [ApplicantId] int  NULL,
    [RecommenderId] int  NULL,
    [DirectorId] int  NULL,
    [RecommenderResponse] varchar(20)  NULL,
    [DirectorResponse] varchar(20)  NULL,
    [ApplicationStatus] varchar(20)  NULL,
    [ItemsId] varchar(500)  NULL,
    [NotificationId] int  NULL
);
GO

-- Creating table 'tblRightPages'
CREATE TABLE [dbo].[tblRightPages] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TakingDate] datetime  NULL,
    [WhereLocated] varchar(100)  NULL,
    [PageId] int  NULL,
    [ItemId] int  NULL,
    [UserId] int  NULL,
    [RequisitionSerialNumber] int  NULL
);
GO

-- Creating table 'tblSectors'
CREATE TABLE [dbo].[tblSectors] (
    [SectorId] int IDENTITY(1,1) NOT NULL,
    [SectorName] varchar(50)  NULL,
    [SectorDescription] varchar(1000)  NULL,
    [CreatingDate] datetime  NULL
);
GO

-- Creating table 'tblUsers'
CREATE TABLE [dbo].[tblUsers] (
    [UserId] int IDENTITY(1,1) NOT NULL,
    [UserName] varchar(30)  NULL,
    [FirstName] varchar(20)  NULL,
    [LastName] varchar(20)  NULL,
    [Password] varchar(10)  NULL,
    [JobPosition] varchar(25)  NULL,
    [SystemPosition] int  NULL,
    [Sex] varchar(6)  NULL,
    [PhotoPath] varchar(500)  NULL,
    [Email] varchar(50)  NULL,
    [ContactNo] varchar(16)  NULL,
    [SignaturePath] varchar(500)  NULL
);
GO

-- Creating table 'tblVouchars'
CREATE TABLE [dbo].[tblVouchars] (
    [VoucharId] int IDENTITY(1,1) NOT NULL,
    [VoucharFilePath] varchar(500)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [InventoryId] in table 'tblInventories'
ALTER TABLE [dbo].[tblInventories]
ADD CONSTRAINT [PK_tblInventories]
    PRIMARY KEY CLUSTERED ([InventoryId] ASC);
GO

-- Creating primary key on [ItemId] in table 'tblItems'
ALTER TABLE [dbo].[tblItems]
ADD CONSTRAINT [PK_tblItems]
    PRIMARY KEY CLUSTERED ([ItemId] ASC);
GO

-- Creating primary key on [PageId] in table 'tblLeftPages'
ALTER TABLE [dbo].[tblLeftPages]
ADD CONSTRAINT [PK_tblLeftPages]
    PRIMARY KEY CLUSTERED ([PageId] ASC);
GO

-- Creating primary key on [NotificationId] in table 'tblNotifications'
ALTER TABLE [dbo].[tblNotifications]
ADD CONSTRAINT [PK_tblNotifications]
    PRIMARY KEY CLUSTERED ([NotificationId] ASC);
GO

-- Creating primary key on [ReportId] in table 'tblReports'
ALTER TABLE [dbo].[tblReports]
ADD CONSTRAINT [PK_tblReports]
    PRIMARY KEY CLUSTERED ([ReportId] ASC);
GO

-- Creating primary key on [RequisitionSlipId] in table 'tblRequisitionSlips'
ALTER TABLE [dbo].[tblRequisitionSlips]
ADD CONSTRAINT [PK_tblRequisitionSlips]
    PRIMARY KEY CLUSTERED ([RequisitionSlipId] ASC);
GO

-- Creating primary key on [Id] in table 'tblRightPages'
ALTER TABLE [dbo].[tblRightPages]
ADD CONSTRAINT [PK_tblRightPages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [SectorId] in table 'tblSectors'
ALTER TABLE [dbo].[tblSectors]
ADD CONSTRAINT [PK_tblSectors]
    PRIMARY KEY CLUSTERED ([SectorId] ASC);
GO

-- Creating primary key on [UserId] in table 'tblUsers'
ALTER TABLE [dbo].[tblUsers]
ADD CONSTRAINT [PK_tblUsers]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [VoucharId] in table 'tblVouchars'
ALTER TABLE [dbo].[tblVouchars]
ADD CONSTRAINT [PK_tblVouchars]
    PRIMARY KEY CLUSTERED ([VoucharId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [InventoryId] in table 'tblItems'
ALTER TABLE [dbo].[tblItems]
ADD CONSTRAINT [FK__tblItem__Invento__182C9B23]
    FOREIGN KEY ([InventoryId])
    REFERENCES [dbo].[tblInventories]
        ([InventoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblItem__Invento__182C9B23'
CREATE INDEX [IX_FK__tblItem__Invento__182C9B23]
ON [dbo].[tblItems]
    ([InventoryId]);
GO

-- Creating foreign key on [InventoryId] in table 'tblLeftPages'
ALTER TABLE [dbo].[tblLeftPages]
ADD CONSTRAINT [FK__tblLeftPa__Inven__1DE57479]
    FOREIGN KEY ([InventoryId])
    REFERENCES [dbo].[tblInventories]
        ([InventoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblLeftPa__Inven__1DE57479'
CREATE INDEX [IX_FK__tblLeftPa__Inven__1DE57479]
ON [dbo].[tblLeftPages]
    ([InventoryId]);
GO

-- Creating foreign key on [SectorId] in table 'tblItems'
ALTER TABLE [dbo].[tblItems]
ADD CONSTRAINT [FK__tblItem__SectorI__173876EA]
    FOREIGN KEY ([SectorId])
    REFERENCES [dbo].[tblSectors]
        ([SectorId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblItem__SectorI__173876EA'
CREATE INDEX [IX_FK__tblItem__SectorI__173876EA]
ON [dbo].[tblItems]
    ([SectorId]);
GO

-- Creating foreign key on [ItemId] in table 'tblRightPages'
ALTER TABLE [dbo].[tblRightPages]
ADD CONSTRAINT [FK__tblRightP__ItemI__2C3393D0]
    FOREIGN KEY ([ItemId])
    REFERENCES [dbo].[tblItems]
        ([ItemId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblRightP__ItemI__2C3393D0'
CREATE INDEX [IX_FK__tblRightP__ItemI__2C3393D0]
ON [dbo].[tblRightPages]
    ([ItemId]);
GO

-- Creating foreign key on [SectorId] in table 'tblLeftPages'
ALTER TABLE [dbo].[tblLeftPages]
ADD CONSTRAINT [FK__tblLeftPa__Secto__1CF15040]
    FOREIGN KEY ([SectorId])
    REFERENCES [dbo].[tblSectors]
        ([SectorId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblLeftPa__Secto__1CF15040'
CREATE INDEX [IX_FK__tblLeftPa__Secto__1CF15040]
ON [dbo].[tblLeftPages]
    ([SectorId]);
GO

-- Creating foreign key on [VoucharId] in table 'tblLeftPages'
ALTER TABLE [dbo].[tblLeftPages]
ADD CONSTRAINT [FK__tblLeftPa__Vouch__1ED998B2]
    FOREIGN KEY ([VoucharId])
    REFERENCES [dbo].[tblVouchars]
        ([VoucharId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblLeftPa__Vouch__1ED998B2'
CREATE INDEX [IX_FK__tblLeftPa__Vouch__1ED998B2]
ON [dbo].[tblLeftPages]
    ([VoucharId]);
GO

-- Creating foreign key on [PageId] in table 'tblRightPages'
ALTER TABLE [dbo].[tblRightPages]
ADD CONSTRAINT [FK__tblRightP__PageI__2B3F6F97]
    FOREIGN KEY ([PageId])
    REFERENCES [dbo].[tblLeftPages]
        ([PageId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblRightP__PageI__2B3F6F97'
CREATE INDEX [IX_FK__tblRightP__PageI__2B3F6F97]
ON [dbo].[tblRightPages]
    ([PageId]);
GO

-- Creating foreign key on [ReceiverId] in table 'tblNotifications'
ALTER TABLE [dbo].[tblNotifications]
ADD CONSTRAINT [FK__tblNotifi__Recei__22AA2996]
    FOREIGN KEY ([ReceiverId])
    REFERENCES [dbo].[tblUsers]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblNotifi__Recei__22AA2996'
CREATE INDEX [IX_FK__tblNotifi__Recei__22AA2996]
ON [dbo].[tblNotifications]
    ([ReceiverId]);
GO

-- Creating foreign key on [SenderId] in table 'tblNotifications'
ALTER TABLE [dbo].[tblNotifications]
ADD CONSTRAINT [FK__tblNotifi__Sende__21B6055D]
    FOREIGN KEY ([SenderId])
    REFERENCES [dbo].[tblUsers]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblNotifi__Sende__21B6055D'
CREATE INDEX [IX_FK__tblNotifi__Sende__21B6055D]
ON [dbo].[tblNotifications]
    ([SenderId]);
GO

-- Creating foreign key on [NotificationId] in table 'tblRequisitionSlips'
ALTER TABLE [dbo].[tblRequisitionSlips]
ADD CONSTRAINT [FK__tblRequis__Notif__286302EC]
    FOREIGN KEY ([NotificationId])
    REFERENCES [dbo].[tblNotifications]
        ([NotificationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblRequis__Notif__286302EC'
CREATE INDEX [IX_FK__tblRequis__Notif__286302EC]
ON [dbo].[tblRequisitionSlips]
    ([NotificationId]);
GO

-- Creating foreign key on [SectorId] in table 'tblReports'
ALTER TABLE [dbo].[tblReports]
ADD CONSTRAINT [FK__tblReport__Secto__30F848ED]
    FOREIGN KEY ([SectorId])
    REFERENCES [dbo].[tblSectors]
        ([SectorId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblReport__Secto__30F848ED'
CREATE INDEX [IX_FK__tblReport__Secto__30F848ED]
ON [dbo].[tblReports]
    ([SectorId]);
GO

-- Creating foreign key on [ApplicantId] in table 'tblRequisitionSlips'
ALTER TABLE [dbo].[tblRequisitionSlips]
ADD CONSTRAINT [FK__tblRequis__Appli__25869641]
    FOREIGN KEY ([ApplicantId])
    REFERENCES [dbo].[tblUsers]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblRequis__Appli__25869641'
CREATE INDEX [IX_FK__tblRequis__Appli__25869641]
ON [dbo].[tblRequisitionSlips]
    ([ApplicantId]);
GO

-- Creating foreign key on [DirectorId] in table 'tblRequisitionSlips'
ALTER TABLE [dbo].[tblRequisitionSlips]
ADD CONSTRAINT [FK__tblRequis__Direc__276EDEB3]
    FOREIGN KEY ([DirectorId])
    REFERENCES [dbo].[tblUsers]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblRequis__Direc__276EDEB3'
CREATE INDEX [IX_FK__tblRequis__Direc__276EDEB3]
ON [dbo].[tblRequisitionSlips]
    ([DirectorId]);
GO

-- Creating foreign key on [RecommenderId] in table 'tblRequisitionSlips'
ALTER TABLE [dbo].[tblRequisitionSlips]
ADD CONSTRAINT [FK__tblRequis__Recom__267ABA7A]
    FOREIGN KEY ([RecommenderId])
    REFERENCES [dbo].[tblUsers]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblRequis__Recom__267ABA7A'
CREATE INDEX [IX_FK__tblRequis__Recom__267ABA7A]
ON [dbo].[tblRequisitionSlips]
    ([RecommenderId]);
GO

-- Creating foreign key on [RequisitionSerialNumber] in table 'tblRightPages'
ALTER TABLE [dbo].[tblRightPages]
ADD CONSTRAINT [FK__tblRightP__Requi__2E1BDC42]
    FOREIGN KEY ([RequisitionSerialNumber])
    REFERENCES [dbo].[tblRequisitionSlips]
        ([RequisitionSlipId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblRightP__Requi__2E1BDC42'
CREATE INDEX [IX_FK__tblRightP__Requi__2E1BDC42]
ON [dbo].[tblRightPages]
    ([RequisitionSerialNumber]);
GO

-- Creating foreign key on [UserId] in table 'tblRightPages'
ALTER TABLE [dbo].[tblRightPages]
ADD CONSTRAINT [FK__tblRightP__UserI__2D27B809]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[tblUsers]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tblRightP__UserI__2D27B809'
CREATE INDEX [IX_FK__tblRightP__UserI__2D27B809]
ON [dbo].[tblRightPages]
    ([UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------