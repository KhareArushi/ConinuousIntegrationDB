--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 3/2/2016
---Description: Details of Stored Procedure to show projectlist according to roles
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--Check if Stored Procedure exists
IF EXISTS (SELECT [name] FROM sys.objects WHERE [name] = 'GetAllProjects')
BEGIN
	DROP PROCEDURE GetAllProjects
END
	GO

--Stored Procedure creation
CREATE PROCEDURE GetAllProjects
(
      @UserId INT
)
AS
BEGIN

--To get the projects according to roles
	DECLARE @Rid INT
	
	SET @Rid=(SELECT C_RoleID from T_UserRoleMappings WHERE C_RegisterID=@UserId)
	
	
	 IF(@Rid =(Select C_RoleID from T_Roles WHERE C_RoleName='Admin'))
	 BEGIN
		SELECT C_ProjectID,C_ProjectName,C_ProjectDescription,C_LastModified FROM T_Projects;
	 END 
	 ELSE
	 BEGIN
		SELECT C_ProjectID,C_ProjectName,C_ProjectDescription,C_LastModified FROM T_Projects WHERE C_ProjectID in (SELECT C_ProjectID FROM T_UserProjectMappings where C_RegisterID=@UserId)
	 END
END