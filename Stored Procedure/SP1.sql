--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 3/2/2016
---Description: Details of Stored Procedure for Releases and SubReleases
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--Check if Stored Procedure exists
IF EXISTS (SELECT [name] FROM sys.objects WHERE [name] = 'Hover')
BEGIN
	DROP PROCEDURE Hover
END
	GO

--Stored Procedure creation
CREATE PROCEDURE Hover 
(
@UReleaseName VARCHAR(50)
)
AS
BEGIN
	
--To get the Release Name
	 DECLARE @Releasename VARCHAR(50)
	 SET @ReleaseName =(SELECT TOP 1 R.C_ReleaseName 
	 FROM T_Releases R JOIN T_SubReleases SR
	 ON R.C_ReleaseID = SR.C_ReleaseID
	 WHERE R.C_ReleaseName NOT IN (@UReleaseName) and R.C_LastModified<(SELECT C_LastModified FROM T_Releases Where C_ReleaseName=@UReleaseName) ORDER BY R.C_LastModified DESC)

--To get the SubReleaseName
	 DECLARE @SubReleaseName VARCHAR(50)
	 SELECT @SubReleaseName = COALESCE (@SubReleaseName +',','') + C_SubReleaseName 
	 FROM  T_SubReleases 
	 WHERE  C_ReleaseID = (SELECT C_ReleaseID FROM T_Releases WHERE C_ReleaseName = @ReleaseName) 

--To Concatenate
	 SELECT @ReleaseName +'('+ @SubReleaseName+')' as [ReleasesInvolved]
END