--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 16/2/2016
---Description: Details of User table Creation
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
--Check if table exists
IF EXISTS (SELECT [name] FROM sys.tables WHERE [name] = 'T_Users' )
   DROP TABLE [T_Users]
GO

--Table creation
CREATE TABLE [dbo].[T_Users] 
(
	[C_UserID] INT IDENTITY(1,1)Primary Key,
	[C_UserName] VARCHAR(50) NOT NULL,
	[C_UserPassword] VARCHAR(50) NOT NULL,
	[C_LastModified] DATETIME NOT NULL	
)