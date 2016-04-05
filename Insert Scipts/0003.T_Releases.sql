--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 29/1/2016
---Description: Inserting into Release table
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

--INSERT INTO TABLE
INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Development' and C_ProjectID = '1'),'15.5.0',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Dev Complete'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Development' and C_ProjectID = '1'),'16.1.0',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'In Progress'),CURRENT_TIMESTAMP)
 
INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Support' and C_ProjectID = '1'),'15.5.0 SP1',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'In QA'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Support' and C_ProjectID = '1'),'16.1.0 SP2',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Dev Complete'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Report' and C_ProjectID = '1'),'15.5.0 WL1',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'UAT'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Report' and C_ProjectID = '1'),'16.1.0 WL2',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Tested'),CURRENT_TIMESTAMP)
  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Development' and C_ProjectID = '2'),'17.1.0',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Dev Complete'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Development' and C_ProjectID = '2'),'17.2.0',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'In Progress'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Support' and C_ProjectID = '2'),'17.1.0 SP1',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'In QA'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Support' and C_ProjectID = '2'),'17.2.0 SP2',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Dev Complete'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Tech Dept' and C_ProjectID = '2'),'17.1.0 WL1',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'UAT'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_Releases](C_StreamID,C_ReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_StreamID FROM T_Streams WHERE C_StreamName = 'Tech Dept' and C_ProjectID = '2'),'17.2.0 WL2',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Tested'),CURRENT_TIMESTAMP)




