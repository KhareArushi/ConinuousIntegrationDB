--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 28/1/2016
---Description: Details of Streams table Creation
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

--Check if table exists
IF EXISTS (SELECT [name] FROM sys.tables WHERE [name] = 'T_Streams')
BEGIN
  ALTER TABLE [dbo].[T_Streams] DROP CONSTRAINT FK_T_Streams_T_Project 
  DROP TABLE [dbo].[T_Streams]
END
GO

--Table creation
CREATE TABLE [dbo].[T_Streams] 
(
	[C_ProjectID] INT NOT NULL,
	[C_StreamID] INT IDENTITY(1,1) PRIMARY KEY,
	[C_StreamName] VARCHAR(50) NOT NULL,
	[C_LastModified] DATETIME NOT NULL,

	--Foreign Key
    CONSTRAINT FK_T_Streams_T_Projects FOREIGN KEY (C_ProjectID) REFERENCES [dbo].[T_Projects](C_ProjectID)	
)