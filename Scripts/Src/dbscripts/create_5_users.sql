USE [dispatch_sutton];
CREATE USER [ross_sutton] FOR LOGIN [ross_sutton];
EXEC sp_addrolemember N'db_owner', N'ross_sutton';

USE [dispatch_ct];
CREATE USER [ctuser] FOR LOGIN [ctuser];
EXEC sp_addrolemember N'db_owner', N'ctuser';

USE [dispatch_me];
CREATE USER [meuser] FOR LOGIN [meuser];
EXEC sp_addrolemember N'db_owner', N'meuser';

USE [dispatch_production];
CREATE USER [ross] FOR LOGIN [ross];
EXEC sp_addrolemember N'db_owner', N'ross';

USE [dispatch_vt];
CREATE USER [vtuser] FOR LOGIN [vtuser];
EXEC sp_addrolemember N'db_owner', N'vtuser';
