--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 28/1/2016
---Description: Details of Project table Creation
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--Check if table exists
IF EXISTS (SELECT [name] FROM sys.tables WHERE [name] = 'T_Projects')
	DROP TABLE [dbo].[T_Projects]
GO

--Table creation
CREATE TABLE [dbo].[T_Projects] 
(
	[C_ProjectID] INT IDENTITY(1,1) Primary Key,
	[C_ProjectName] VARCHAR(50) NOT NULL,
	[C_ProjectDescription] VARCHAR(MAX) NOT NULL,
	[C_LastModified] DATETIME NOT NULL	
)