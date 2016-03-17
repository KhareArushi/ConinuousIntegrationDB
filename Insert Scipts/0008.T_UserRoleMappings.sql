--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 29/1/2016
---Description: Inserting into User Role Mappings table
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------


--INSERT INTO TABLE
INSERT INTO [dbo].[T_UserRoleMappings]([C_UserID],[C_RoleID],[C_LastModified]) 
VALUES((SELECT C_UserID FROM T_Users WHERE C_UserName = 'Ashish'),
(SELECT C_RoleID FROM T_Roles WHERE C_RoleName = 'Admin'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserRoleMappings]([C_UserID],[C_RoleID],[C_LastModified]) 
VALUES((SELECT C_UserID FROM T_Users WHERE C_UserName = 'Arushi'),
(SELECT C_RoleID FROM T_Roles WHERE C_RoleName = 'User'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserRoleMappings]([C_UserID],[C_RoleID],[C_LastModified]) 
VALUES((SELECT C_UserID FROM T_Users WHERE C_UserName = 'Keyur'),
(SELECT C_RoleID FROM T_Roles WHERE C_RoleName = 'Admin'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserRoleMappings]([C_UserID],[C_RoleID],[C_LastModified]) 
VALUES((SELECT C_UserID FROM T_Users WHERE C_UserName= 'Krutika'),
(SELECT C_RoleID FROM T_Roles WHERE C_RoleName = 'User'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserRoleMappings]([C_UserID],[C_RoleID],[C_LastModified]) 
VALUES((SELECT C_UserID FROM T_Users WHERE C_UserName = 'Krutika'),
(SELECT C_RoleID FROM T_Roles WHERE C_RoleName = 'User'),
CURRENT_TIMESTAMP)



