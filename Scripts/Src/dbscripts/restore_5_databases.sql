use master
go
RESTORE DATABASE [dispatch_vt] 
FROM  DISK = N'c:\backup\Dispatch_VT_FullBackup_20100225_1630.bak' 
WITH  FILE = 1, NOUNLOAD,  REPLACE,  STATS = 10
GO

RESTORE DATABASE [dispatch_ct] 
FROM  DISK = N'C:\BACKUP\dispatch_ct_FullBackup_20100224_0750.bak' 
WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO

RESTORE DATABASE [dispatch_me] 
FROM  DISK =N'C:\BACKUP\dispatch_me_FullBackup_20100224_0750.bak' 
WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO
RESTORE DATABASE [dispatch_ma] 
FROM  DISK =N'C:\BACKUP\dispatch_sutton_FullBackup_20070830_0116.bak' 
WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO
RESTORE DATABASE [dispatch_nh] 
FROM  DISK = N'C:\BACKUP\dispatch_production_FullBackup_20100224_0750.bak' 
WITH  FILE = 1, NOUNLOAD,  REPLACE,  STATS = 10
GO
