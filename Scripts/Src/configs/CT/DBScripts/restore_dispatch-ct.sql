use master
go


RESTORE DATABASE [dispatch_ct] 
FROM  
  --DISK = N'C:\BACKUP\dispatch_ct_FullBackup_20100224_0750.bak' 
  DISK = N'c:\hotspare\backup\dispatch_ct_FullBackup_20100317_0115.bak' 
WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO

