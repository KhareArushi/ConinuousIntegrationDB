--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 29/1/2016
---Description: Inserting into Stream table
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------


--INSERT INTO TABLE
INSERT INTO [dbo].[T_Streams](C_ProjectID,C_StreamName,C_LastModified)
VALUES((SELECT C_ProjectID FROM T_Projects WHERE C_ProjectName = 'Progresso'),'Development',CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Streams](C_ProjectID,C_StreamName,C_LastModified)
VALUES((SELECT C_ProjectID FROM T_Projects WHERE C_ProjectName = 'Progresso'),'Tech Dept',CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Streams](C_ProjectID,C_StreamName,C_LastModified)
VALUES((SELECT C_ProjectID FROM T_Projects WHERE C_ProjectName = 'Progresso'),'Support',CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Streams](C_ProjectID,C_StreamName,C_LastModified)
VALUES((SELECT C_ProjectID FROM T_Projects WHERE C_ProjectName = 'Progresso'),'Report',CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Streams](C_ProjectID,C_StreamName,C_LastModified)
VALUES((SELECT C_ProjectID FROM T_Projects WHERE C_ProjectName = 'ContinuousIntegration'),'Development',CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Streams](C_ProjectID,C_StreamName,C_LastModified)
VALUES((SELECT C_ProjectID FROM T_Projects WHERE C_ProjectName = 'ContinuousIntegration'),'Tech Dept',CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Streams](C_ProjectID,C_StreamName,C_LastModified)
VALUES((SELECT C_ProjectID FROM T_Projects WHERE C_ProjectName = 'ContinuousIntegration'),'Support',CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Streams](C_ProjectID,C_StreamName,C_LastModified)
VALUES((SELECT C_ProjectID FROM T_Projects WHERE C_ProjectName = 'ContinuousIntegration'),'Report',CURRENT_TIMESTAMP)



