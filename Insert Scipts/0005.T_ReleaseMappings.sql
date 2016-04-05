--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 29/1/2016
---Description: Inserting into ReleaseMapping table
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

--INSERT INTO TABLE
INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'ST1'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases where C_ReleaseName='15.5.0')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'ST2'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases where C_ReleaseName='15.5.0')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'ST3'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases where C_ReleaseName='15.5.0')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 SP2'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 SP1'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'S1'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName='15.5.0 SP1')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 SP2'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 SP1'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'S2'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName='15.5.0 SP1')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 SP2'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 SP1'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'S3'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName='15.5.0 SP1')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 WL2'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 WL1'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'R1'and 
C_ReleaseID=(select C_ReleaseID FROM T_Releases WHERE C_ReleaseName='15.5.0 WL1')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 WL2'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 WL1'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'R2'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName='15.5.0 WL1')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '16.1.0 WL2'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '15.5.0 WL1'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'R3'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName='15.5.0 WL1')),CURRENT_TIMESTAMP)

---------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.2.0'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.1.0'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'ST1'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases where C_ReleaseName='17.1.0')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.2.0'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.1.0'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'ST2'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases where C_ReleaseName='17.1.0')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.2.0 SP2'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.1.0 SP1'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'S1'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName='17.1.0 SP1')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.2.0 SP2'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.1.0 SP1'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'S2'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName='17.1.0 SP1')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.2.0 WL2'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.1.0 WL1'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'R1'and 
C_ReleaseID=(select C_ReleaseID FROM T_Releases WHERE C_ReleaseName='17.1.0 WL1')),CURRENT_TIMESTAMP)

INSERT INTO [dbo].[T_ReleaseMappings](C_SourceReleaseID,C_InclusiveReleaseID,C_InclusiveSubReleaseID,C_LastModified)
VALUES((SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.2.0 WL2'),
(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = '17.1.0 WL1'),
(SELECT C_SubReleaseID FROM T_SubReleases WHERE C_SubReleaseName = 'R2'and 
C_ReleaseID=(SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName='17.1.0 WL1')),CURRENT_TIMESTAMP)


