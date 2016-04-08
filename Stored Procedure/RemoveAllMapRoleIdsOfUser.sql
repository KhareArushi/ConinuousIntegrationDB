--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Krutika Khatavakar
---Date: 8/4/2016
---Description: Stored procedure for deleting Role id records
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--Check if stored procedure exists
IF EXISTS (SELECT [name] FROM sys.objects WHERE [name] = 'RemoveAllMapRoleIdsOfUser')
BEGIN
	DROP PROCEDURE RemoveAllMapRoleIdsOfUser
END
	GO

--Stored procedure creation
CREATE PROCEDURE RemoveAllMapRoleIdsOfUser
(
      @RegisterID INT	 
)
AS
BEGIN		 			 
		DELETE FROM T_UserRoleMappings WHERE C_RegisterID=@RegisterID 
END