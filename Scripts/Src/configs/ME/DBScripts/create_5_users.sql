USE [dispatch_sutton];
CREATE USER [mauser] FOR LOGIN [mauser];
EXEC sp_addrolemember N'db_owner', N'mauser';

USE [dispatch_ct];
CREATE USER [ctuser] FOR LOGIN [ctuser];
EXEC sp_addrolemember N'db_owner', N'ctuser';

USE [dispatch_me];
CREATE USER [meuser] FOR LOGIN [meuser];
EXEC sp_addrolemember N'db_owner', N'meuser';

USE [dispatch_production];
CREATE USER [nhuser] FOR LOGIN [nhuser];
EXEC sp_addrolemember N'db_owner', N'nuuser';

USE [dispatch_vt];
CREATE USER [vtuser] FOR LOGIN [vtuser];
EXEC sp_addrolemember N'db_owner', N'vtuser';
