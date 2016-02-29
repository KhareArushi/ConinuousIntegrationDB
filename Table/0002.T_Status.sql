--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
---Who: Arushi Khare
---Date: 28/1/2016
---Description: Details of Status table Creation
--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
--Check if table exists
IF EXISTS (SELECT [name] FROM sys.tables WHERE [name] = 'T_Status' )
   DROP TABLE [T_Status]
GO

--Table creation
CREATE TABLE [dbo].[T_Status] 
(
	[C_StatusID] INT IDENTITY(1,1)Primary Key,
	[C_StatusName] VARCHAR(50) NOT NULL

)	