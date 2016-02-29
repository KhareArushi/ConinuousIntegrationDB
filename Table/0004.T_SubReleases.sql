--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 28/1/2016
---Description: Details of SubReleases table Creation
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
--Check if table exists
IF EXISTS (SELECT [name] FROM sys.tables WHERE [name] = 'T_SubReleases')
	BEGIN
	  ALTER TABLE [dbo].[T_SubReleases] DROP CONSTRAINT FK_T_SubReleases_T_Releases,FK_T_SubReleases_T_Status 
	  DROP TABLE [dbo].[T_SubReleases]
	END
GO

--Table creation
CREATE TABLE [dbo].[T_SubReleases] 
(
	[C_SubReleaseID] INT IDENTITY(1,1) PRIMARY KEY,
	[C_ReleaseID] INT NOT NULL,
	[C_SubReleaseName] VARCHAR(50) NOT NULL,
	[C_StatusID] INT NOT NULL,
	[C_LastModified] DATETIME NOT NULL,

	--Foreign Key
	CONSTRAINT FK_T_SubReleases_T_Releases FOREIGN KEY (C_ReleaseID) REFERENCES [dbo].[T_Releases](C_ReleaseID),
	Constraint FK_T_SubReleases_T_Status FOREIGN KEY (C_StatusID) REFERENCES [dbo].[T_Status](C_StatusID)
)