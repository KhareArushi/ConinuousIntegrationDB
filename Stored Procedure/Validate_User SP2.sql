--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 3/2/2016
---Description: Details of Stored Procedure for Verifying User Credentials
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--Check if Stored Procedure exists
IF EXISTS (SELECT [name] FROM sys.objects WHERE [name] = 'Validate_User')
BEGIN
	DROP PROCEDURE Validate_User
END
	GO

--Stored Procedure creation
CREATE PROCEDURE Validate_User
(
      @Username NVARCHAR(20),
      @Password NVARCHAR(20)
)
AS
BEGIN

--To get the
SET NOCOUNT ON;
      DECLARE @UserId INT, @LastModified DATETIME
     
      SELECT @UserId = C_UserID, @LastModified = C_LastModified
      FROM T_Users WHERE C_UserName = @Username AND [C_UserPassword] = @Password
     
      IF @UserId IS NOT NULL
      BEGIN
            IF NOT EXISTS(SELECT C_UserId FROM T_Users WHERE C_UserId = @UserId)
            BEGIN
                  UPDATE Users
                  SET @LastModified = GETDATE()
                  WHERE UserId = @UserId
                  SELECT @UserId [UserId] -- User Valid 
            END
            ELSE
            BEGIN
                  SELECT -2 -- User not activated.
            END
      END
      ELSE
      BEGIN
            SELECT -1 -- User invalid.
      END
END