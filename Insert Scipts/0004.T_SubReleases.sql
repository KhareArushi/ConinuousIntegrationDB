--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 29/1/2016
---Description: Inserting into Sub-Releases table
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

--INSERT INTO TABLE
INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0'),'ST1',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Tested'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0'),'ST2',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'In QA'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0'),'ST3',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Dev Complete'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0'),'ST1',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'UAT'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0'),'ST2',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Tested'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0'),'ST3',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'In QA'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 SP1'),'S1 ',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'In QA'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 SP1'),'S2 ',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Dev Complete'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 SP1'),'S3 ',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'In Progress'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 SP2'),'S1',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Dev Complete'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 SP2'),'S2',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'In Progress'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 SP2'),'S3',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'To Do'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 WL1'),'R1',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Pre-UAT'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 WL1'),'R2',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'QA'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 WL1'),'R3',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Dev Done'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 WL2'),'R1',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'QA'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 WL2'),'R2',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'Dev Done'),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_SubReleases](C_ReleaseID,C_SubReleaseName,C_StatusID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 WL2'),'R3',
(SELECT C_StatusID FROM T_Status WHERE C_StatusName = 'WIP'),CURRENT_TIMESTAMP)