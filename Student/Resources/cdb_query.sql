USE [AdventureWorks2017]
GO

CREATE TABLE SourceTable (
	[ID] [int] PRIMARY KEY CLUSTERED,
	[FirstName] nvarchar(8)
	);

INSERT INTO [SourceTable]
VALUES (1, N'Bob'),
	(2, N'Susan');
GO

USE [WideWorldImporters]
GO
CREATE TABLE [dbo].[DestTable] (
	[ID] [int] PRIMARY KEY NONCLUSTERED,
	[FirstName] nvarchar(8)
	);
GO

USE [AdventureWorks2017]
GO

CREATE PROCEDURE [dbo].[Crossdatabase] 
AS
BEGIN

	INSERT INTO [WideWorldImporters].[dbo].[DestTable]
	SELECT * FROM [AdventureWorks2017].[dbo].[SourceTable]
	
END;
GO

