--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 16/2/2016
---Description: Details of UserRoleMapping table Creation
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
--Check if table exists
IF EXISTS (SELECT [name] FROM sys.tables WHERE [name] = 'T_UserRoleMappings' )
   DROP TABLE [T_UserRoleMappings]
GO

--Table creation
CREATE TABLE [dbo].[T_UserRoleMappings] 
(
	[C_MapID] INT IDENTITY(1,1)Primary Key,
	[C_UserID] INT NOT NULL,
	[C_RoleID] INT NOT NULL,
	[C_LastModified] DATETIME NOT NULL,

	--Foreign Key--
	CONSTRAINT FK_T_UserRoleMappings_T_Users FOREIGN KEY (C_UserID) REFERENCES  [dbo].[T_Users](C_UserID),
	CONSTRAINT FK_T_UserRoleMappings_T_Roles FOREIGN KEY (C_RoleID) REFERENCES [dbo].[T_Roles](C_RoleID)
)