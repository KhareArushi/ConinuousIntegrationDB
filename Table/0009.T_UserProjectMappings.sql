--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 16/2/2016
---Description: Details of UserProjectMappings table Creation
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
--Check if table exists
IF EXISTS (SELECT [name] FROM sys.tables WHERE [name] = 'T_UserProjectMappings' )
   DROP TABLE [T_UserProjectMappings]
GO

--Table creation
CREATE TABLE [dbo].[T_UserProjectMappings] 
(
	[C_MapID] INT IDENTITY(1,1)Primary Key,
	[C_UserID] INT NOT NULL,
	[C_ProjectID] INT NOT NULL,
	[C_LastModified] DATETIME NOT NULL,

	--Foreign Key--
	CONSTRAINT FK_T_UserProjectMappings_T_Users FOREIGN KEY (C_UserID) REFERENCES  [dbo].[T_Users](C_UserID),
	CONSTRAINT FK_T_UserProjectMappings_T_Projects FOREIGN KEY (C_ProjectID) REFERENCES [dbo].[T_Projects](C_ProjectID)
)