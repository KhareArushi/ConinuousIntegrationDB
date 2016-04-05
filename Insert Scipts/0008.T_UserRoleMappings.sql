--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 29/1/2016
---Description: Inserting into User Role Mappings table
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------


--INSERT INTO TABLE
INSERT INTO [dbo].[T_UserRoleMappings]([C_RegisterID],[C_RoleID],[C_LastModified]) 
VALUES((SELECT C_RegisterID FROM T_Registrations WHERE C_FirstName = 'Ashish'),
(SELECT C_RoleID FROM T_Roles WHERE C_RoleName = 'Admin'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserRoleMappings]([C_RegisterID],[C_RoleID],[C_LastModified]) 
VALUES((SELECT C_RegisterID FROM T_Registrations WHERE C_FirstName = 'Arushi'),
(SELECT C_RoleID FROM T_Roles WHERE C_RoleName = 'User'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserRoleMappings]([C_RegisterID],[C_RoleID],[C_LastModified]) 
VALUES((SELECT C_RegisterID FROM T_Registrations WHERE C_FirstName = 'Keyur'),
(SELECT C_RoleID FROM T_Roles WHERE C_RoleName = 'Admin'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserRoleMappings]([C_RegisterID],[C_RoleID],[C_LastModified]) 
VALUES((SELECT C_RegisterID FROM T_Registrations WHERE C_FirstName= 'Krutika'),
(SELECT C_RoleID FROM T_Roles WHERE C_RoleName = 'User'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserRoleMappings]([C_RegisterID],[C_RoleID],[C_LastModified]) 
VALUES((SELECT C_RegisterID FROM T_Registrations WHERE C_FirstName = 'Krutika'),
(SELECT C_RoleID FROM T_Roles WHERE C_RoleName = 'User'),
CURRENT_TIMESTAMP)



