USE [dispatch_ct]
GO
CREATE USER [ctuser] FOR LOGIN [ctuser]
GO
USE [dispatch_ct]
GO
EXEC sp_addrolemember N'db_owner', N'ctuser'
GO
