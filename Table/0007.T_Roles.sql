--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 16/2/2016
---Description: Details of Roles table Creation
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
--Check if table exists
IF EXISTS (SELECT [name] FROM sys.tables WHERE [name] = 'T_Roles' )
   DROP TABLE [T_Roles]
GO

--Table creation
CREATE TABLE [dbo].[T_Roles] 
(
	[C_RoleID] INT IDENTITY(1,1)Primary Key,
	[C_RoleName] VARCHAR(50) NOT NULL,
	[C_LastModified] DATETIME NOT NULL
)