--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 28/1/2016
---Description: Details of Releases table creation
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
--Check if table exists
IF EXISTS (SELECT [name] FROM sys.tables WHERE [name] = 'T_Releases')
	BEGIN
	  ALTER TABLE [dbo].[T_Releases] DROP CONSTRAINT FK_T_Releases_T_Streams, FK_T_Releases_T_Status
	  DROP TABLE  [dbo].[T_Releases]
	END
GO

--Table creation
CREATE TABLE [dbo].[T_Releases]
(
	[C_ReleaseID] INT IDENTITY(1,1) PRIMARY KEY,
	[C_StreamID] INT NOT NULL,
	[C_ReleaseName] VARCHAR(20) NOT NULL,
	[C_StatusID] INT NOT NULL,
	[C_LastModified] DATETIME NOT NULL,

	--Foreign Key--
	CONSTRAINT FK_T_Releases_T_Streams FOREIGN KEY (C_StreamID) REFERENCES  [dbo].[T_Streams](C_StreamID),
	CONSTRAINT FK_T_Releases_T_Status FOREIGN KEY (C_StatusID) REFERENCES [dbo].[T_Status](C_StatusID)
)