--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 21/3/2016
---Description: Details of Stored Procedure for showing project details according to ProjectID
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--Check if Stored Procedure exists
IF EXISTS (SELECT [name] FROM sys.objects WHERE [name] = 'ProjectDetails')
BEGIN
	DROP PROCEDURE ProjectDetails
END
	GO

--Stored Procedure creation
CREATE PROCEDURE ProjectDetails 
(
@UserID INT,
@ProjectID INT
)
AS
BEGIN
--To verify whether project is assigned to the user or not
DECLARE @Pid INT
SELECT @Pid=(Select count(*) from T_UserRoleMappings where C_RoleId = (select C_RoleID from T_Roles where C_RoleName = 'Admin') and C_RegisterID = @UserID)
IF (@Pid>0)
BEGIN
--To get streams,Releases,SubReleases,Status for the project
	SELECT t1.C_StreamID,t1.C_StreamName,t2.C_ReleaseID,t2.C_ReleaseName,t3.C_SubReleaseID,t3.C_SubReleaseName,t4.C_StatusID,t4.C_StatusName
	FROM T_STREAMS AS t1 LEFT OUTER JOIN T_Releases AS t2
	ON t1.C_StreamID = t2.C_StreamID
	LEFT OUTER JOIN T_SubReleases AS t3
	ON t2.C_ReleaseID = t3.C_ReleaseID
	LEFT OUTER JOIN T_Status AS t4
	ON t3.C_StatusID = t4.C_StatusID
	WHERE C_PROJECTID= @ProjectID OR t1.C_StreamID IS NULL
END
   DECLARE @Records INT
   SELECT @Records = (SELECT count(*) FROM T_Projects WHERE C_ProjectID in (select C_ProjectID FROM T_UserProjectMappings WHERE C_RegisterID = @UserID
   and C_ProjectID = @ProjectID))
IF(@Records>0)
BEGIN
--To get Streams,Releases,SubReleases,Status for the project
   SELECT t1.C_StreamID,t1.C_StreamName,t2.C_ReleaseID,t2.C_ReleaseName,t3.C_SubReleaseID,t3.C_SubReleaseName,t4.C_StatusID,t4.C_StatusName
	FROM T_STREAMS AS t1 LEFT OUTER JOIN T_Releases AS t2
	ON t1.C_StreamID = t2.C_StreamID
	LEFT OUTER JOIN T_SubReleases AS t3
	ON t2.C_ReleaseID = t3.C_ReleaseID
	LEFT OUTER JOIN T_Status AS t4
	ON t3.C_StatusID = t4.C_StatusID
	WHERE C_PROJECTID= @ProjectID OR t1.C_StreamID IS NULL
END 
--ELSE
--BEGIN
--     Select count(*) from T_UserProjectMappings where C_ProjectID = @ProjectID and C_RegisterID =@UserID
--END
END