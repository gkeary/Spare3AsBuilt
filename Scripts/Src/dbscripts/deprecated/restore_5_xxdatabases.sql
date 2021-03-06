
RESTORE DATABASE [xxdispatch_vt] 
FROM  DISK = N'C:\BACKUP\Dispatch_VT_FullBackup_20100221_0630.bak' 
   WITH  FILE = 1,  
   MOVE N'dispatch_VT' 
   TO N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\xxdispatch_vt.mdf',  
      MOVE N'dispatch_VT_log' 
      TO N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\xxdispatch_vt_log.LDF',  
        NOUNLOAD,  REPLACE,  STATS = 10
GO

RESTORE DATABASE [xxdispatch_ct] 
FROM  DISK = 
   N'C:\BACKUP\Dispatch_VT_FullBackup_20100221_0630.bak' 
   WITH  FILE = 1,  
   MOVE N'dispatch_VT' 
   TO 
   N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\xxdispatch_ct.mdf',  
   MOVE N'dispatch_VT_log' 
   TO N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\xxdispatch_ct_log.LDF'
   ,  NOUNLOAD,  REPLACE,  STATS = 10
GO

RESTORE DATABASE [xxdispatch_me] 
FROM  DISK = 
   N'C:\BACKUP\Dispatch_VT_FullBackup_20100221_0630.bak' 
   WITH  FILE = 1,  
   MOVE N'dispatch_VT' 
   TO N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\xxdispatch_me.mdf',  
   MOVE N'dispatch_VT_log' 
   TO N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\xxdispatch_me_log.LDF'
   ,  NOUNLOAD,  REPLACE,  STATS = 10
GO
RESTORE DATABASE [xxdispatch_ma] 
FROM  DISK = 
   N'C:\BACKUP\Dispatch_VT_FullBackup_20100221_0630.bak' 
   WITH  FILE = 1,  
   MOVE N'dispatch_VT' 
   TO N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\xxdispatch_ma.mdf',  
   MOVE N'dispatch_VT_log' 
   TO N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\xxdispatch_ma_log.LDF'
   ,  NOUNLOAD,  REPLACE,  STATS = 10
GO
RESTORE DATABASE [xxdispatch_nh] 
FROM  DISK = 
   N'C:\BACKUP\Dispatch_VT_FullBackup_20100221_0630.bak' 
   WITH  FILE = 1,  
   MOVE N'dispatch_VT' 
   TO N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\xxdispatch_nh.mdf',  
   MOVE N'dispatch_VT_log' 
   TO N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\xxdispatch_nh_log.LDF'
   ,  NOUNLOAD,  REPLACE,  STATS = 10
GO
