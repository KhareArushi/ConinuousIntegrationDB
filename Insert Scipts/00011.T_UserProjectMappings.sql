--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 29/1/2016
---Description: Inserting into UserProjectMappings table
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------


--INSERT INTO TABLE
INSERT INTO [dbo].[T_UserProjectMappings]([C_RegisterID],[C_LastModified]) 
VALUES((SELECT C_RegisterID FROM T_Registrations WHERE C_FirstName = 'Ashish'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserProjectMappings]([C_RegisterID],[C_LastModified]) 
VALUES((SELECT C_RegisterID FROM T_Registrations WHERE C_FirstName = 'Keyur'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserProjectMappings]([C_RegisterID],[C_ProjectID],[C_LastModified]) 
VALUES((SELECT C_RegisterID FROM T_Registrations WHERE C_FirstName = 'Arushi'),
(SELECT C_ProjectID FROM T_Projects WHERE C_ProjectName = 'ContinuousIntegration'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserProjectMappings]([C_RegisterID],[C_ProjectID],[C_LastModified]) 
VALUES((SELECT C_RegisterID FROM T_Registrations WHERE C_FirstName = 'Krutika'),
(SELECT C_ProjectID FROM T_Projects WHERE C_ProjectName = 'E5-H5'),
CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_UserProjectMappings]([C_RegisterID],[C_ProjectID],[C_LastModified]) 
VALUES((SELECT C_RegisterID FROM T_Registrations WHERE C_FirstName = 'Krutika'),
(SELECT C_ProjectID FROM T_Projects WHERE C_ProjectName = 'ContinuousIntegration'),
CURRENT_TIMESTAMP)



