--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 28/1/2016
---Description: Details of ReleaseMappings table Creation
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--Check if table exists
IF EXISTS (SELECT [name] FROM sys.tables WHERE [name] = 'T_ReleaseMappings' )
BEGIN
  ALTER TABLE [dbo].[T_ReleaseMappings] DROP CONSTRAINT FK_T_ReleaseMappings_T_Releases,FK_T_ReleaseMappings_T_SubReleases,
  FK_T_ReleaseMappings_T_Releases1 
  DROP TABLE [dbo].[T_ReleaseMappings]
END
GO

--Table creation
CREATE TABLE [dbo].[T_ReleaseMappings]
 (
	[C_MapID] INT IDENTITY(1,1) Primary Key,
	[C_SourceReleaseID] INT NOT NULL,
	[C_InclusiveReleaseID] INT NOT NULL,
	[C_InclusiveSubReleaseID] INT NOT NULL,
	[C_LastModified] DATETIME NOT NULL,

	--Foreign Key
	CONSTRAINT FK_T_ReleaseMappings_T_Releases1 FOREIGN KEY (C_SourceReleaseID) REFERENCES [dbo].[T_Releases](C_ReleaseID),
	CONSTRAINT FK_T_ReleaseMappings_T_Releases FOREIGN KEY (C_InclusiveReleaseID) REFERENCES [dbo].[T_Releases](C_ReleaseID),
	CONSTRAINT FK_T_ReleaseMappings_T_SubReleases FOREIGN KEY (C_InclusiveSubReleaseID) REFERENCES [dbo].[T_SubReleases](C_SubReleaseID)
	
)