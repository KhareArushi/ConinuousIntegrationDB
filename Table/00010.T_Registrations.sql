---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
--Who:  Krutika Khatavkar
--Date:  28/1/2016
--Desc:  Details of Registeration table
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------


--CHECK IF TABLE EXIST
	IF EXISTS (SELECT [name] FROM sys.tables WHERE [name] = 'T_Registrations')
		DROP TABLE [dbo].[T_Registrations]
	GO

--TABLE CREATION
	CREATE TABLE [dbo].[T_Registrations]
		(	[C_RegisterID] INT IDENTITY(1,1) NOT NULL,
			[C_FirstName] NVARCHAR(50) NOT NULL,
			[C_LastName] NVARCHAR(50) NOT NULL,
			[C_EmailID] NVARCHAR(50) NOT NULL,
			[C_Password] NVARCHAR(50) NOT NULL,
			
			--PRIMARY KEY 
			PRIMARY KEY CLUSTERED ([C_RegisterID] ASC)
		)