--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Krutika Khatavakar
---Date: 8/4/2016
---Description: Stored procedure for deleting project records
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--Check if stored procedure exists
IF EXISTS (SELECT [name] FROM sys.objects WHERE [name] = 'RemoveAllMapProjectIdsOfUser')
BEGIN
	DROP PROCEDURE RemoveAllMapProjectIdsOfUser
END
	GO

--Stored procedure creation
CREATE PROCEDURE RemoveAllMapProjectIdsOfUser
(
      @RegisterID INT	 
)
AS
BEGIN		 			 
		DELETE FROM T_UserProjectMappings WHERE C_RegisterID=@RegisterID 
END