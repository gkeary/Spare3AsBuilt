RESTORE DATABASE [dispatch_ma] 
  FROM  DISK = N'C:\BACKUP\dispatch_sutton_FullBackup_20100227_0520.bak' 
    WITH  FILE = 1,  
    MOVE N'Ross_development_Data' 
    TO N'C:\Program Files\Microsoft SQL Server\MSSQL10.SX\MSSQL\DATA\dispatch_ma.mdf',  
    
    MOVE N'Ross_development_Log' 
    TO N'C:\Program Files\Microsoft SQL Server\MSSQL10.SX\MSSQL\DATA\dispatch_ma_log.LDF',  
    NOUNLOAD,  REPLACE,  STATS = 10
GO
/*******

10 percent processed.
20 percent processed.
30 percent processed.
40 percent processed.
50 percent processed.
60 percent processed.
70 percent processed.
80 percent processed.
90 percent processed.
100 percent processed.
Processed 4536 pages for database 'dispatch_ma', file 'Ross_development_Data' on file 1.
Processed 1 pages for database 'dispatch_ma', file 'Ross_development_Log' on file 1.
Converting database 'dispatch_ma' from version 611 to the current version 655.
Database 'dispatch_ma' running the upgrade step from version 611 to version 621.
Database 'dispatch_ma' running the upgrade step from version 621 to version 622.
Database 'dispatch_ma' running the upgrade step from version 622 to version 625.
Database 'dispatch_ma' running the upgrade step from version 625 to version 626.
Database 'dispatch_ma' running the upgrade step from version 626 to version 627.
Database 'dispatch_ma' running the upgrade step from version 627 to version 628.
Database 'dispatch_ma' running the upgrade step from version 628 to version 629.
Database 'dispatch_ma' running the upgrade step from version 629 to version 630.
Database 'dispatch_ma' running the upgrade step from version 630 to version 631.
Database 'dispatch_ma' running the upgrade step from version 631 to version 632.
Database 'dispatch_ma' running the upgrade step from version 632 to version 633.
Database 'dispatch_ma' running the upgrade step from version 633 to version 634.
Database 'dispatch_ma' running the upgrade step from version 634 to version 635.
Database 'dispatch_ma' running the upgrade step from version 635 to version 636.
Database 'dispatch_ma' running the upgrade step from version 636 to version 637.
Database 'dispatch_ma' running the upgrade step from version 637 to version 638.
Database 'dispatch_ma' running the upgrade step from version 638 to version 639.
Database 'dispatch_ma' running the upgrade step from version 639 to version 640.
Database 'dispatch_ma' running the upgrade step from version 640 to version 641.
Database 'dispatch_ma' running the upgrade step from version 641 to version 642.
Database 'dispatch_ma' running the upgrade step from version 642 to version 643.
Database 'dispatch_ma' running the upgrade step from version 643 to version 644.
Database 'dispatch_ma' running the upgrade step from version 644 to version 645.
Database 'dispatch_ma' running the upgrade step from version 645 to version 646.
Database 'dispatch_ma' running the upgrade step from version 646 to version 647.
Database 'dispatch_ma' running the upgrade step from version 647 to version 648.
Database 'dispatch_ma' running the upgrade step from version 648 to version 649.
Database 'dispatch_ma' running the upgrade step from version 649 to version 650.
Database 'dispatch_ma' running the upgrade step from version 650 to version 651.
Database 'dispatch_ma' running the upgrade step from version 651 to version 652.
Database 'dispatch_ma' running the upgrade step from version 652 to version 653.
Database 'dispatch_ma' running the upgrade step from version 653 to version 654.
Database 'dispatch_ma' running the upgrade step from version 654 to version 655.
RESTORE DATABASE successfully processed 4537 pages in 2.629 seconds (13.482 MB/sec).

*********/