/*******************
RESTORE DATABASE [dispatch_ct] 
FROM  DISK = 
  N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\Dispatch_VT_FullBackup_20100221_0630_bak\Dispatch_VT_FullBackup_20100221_0630.bak' WITH  FILE = 1,  MOVE N'dispatch_VT' TO N'c:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\dispatch_ct.mdf',  
  MOVE N'dispatch_ct_log' 
  TO 
  N'c:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\dispatch_ct_log.ldf',
  
    NOUNLOAD,  REPLACE,  STATS = 10
GO
***********/
RESTORE DATABASE [dispatch_me] 
FROM  DISK = 
  N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\Dispatch_VT_FullBackup_20100221_0630_bak\Dispatch_VT_FullBackup_20100221_0630.bak' WITH  FILE = 1,  MOVE N'dispatch_VT' 
  TO N'c:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\dispatch_me.mdf',  
  MOVE N'dispatch_me_log' 
  TO 
  N'c:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\dispatch_me_log.ldf',
  
    NOUNLOAD,  REPLACE,  STATS = 10
GO
RESTORE DATABASE [dispatch_ma] 
FROM  DISK = 
  N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\Dispatch_VT_FullBackup_20100221_0630_bak\Dispatch_VT_FullBackup_20100221_0630.bak' WITH  FILE = 1,  MOVE N'dispatch_VT' 
  TO N'c:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\dispatch_ma.mdf',  
  MOVE N'dispatch_ma_log' 
  TO 
  N'c:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\dispatch_ma_log.ldf',
  
    NOUNLOAD,  REPLACE,  STATS = 10
GO
RESTORE DATABASE [dispatch_nh] 
FROM  DISK = 
  N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\Dispatch_VT_FullBackup_20100221_0630_bak\Dispatch_VT_FullBackup_20100221_0630.bak' WITH  FILE = 1,  MOVE N'dispatch_VT' 
  TO N'c:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\dispatch_nh.mdf',  
  MOVE N'dispatch_ma_log' 
  TO 
  N'c:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\dispatch_nh_log.ldf',  
    NOUNLOAD,  REPLACE,  STATS = 10
GO
