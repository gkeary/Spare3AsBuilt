USE [master]
GO

CREATE LOGIN [ctuser] 
   WITH PASSWORD=N'123ross321', 
   DEFAULT_DATABASE=[dispatch_ct], 
   CHECK_EXPIRATION=OFF, 
   CHECK_POLICY=OFF
GO
EXEC master..sp_addsrvrolemember 
     @loginame = N'ctuser', 
     @rolename = N'dbcreator'
GO

CREATE LOGIN [vtuser] 
   WITH PASSWORD=N'123ross321', 
   DEFAULT_DATABASE=[dispatch_vt], 
   CHECK_EXPIRATION=OFF, 
   CHECK_POLICY=OFF
GO
EXEC master..sp_addsrvrolemember 
     @loginame = N'vtuser', 
     @rolename = N'dbcreator'
GO

CREATE LOGIN [meuser] 
   WITH PASSWORD=N'123ross321', 
   DEFAULT_DATABASE=[dispatch_me], 
   CHECK_EXPIRATION=OFF, 
   CHECK_POLICY=OFF
GO
EXEC master..sp_addsrvrolemember 
     @loginame = N'meuser', 
     @rolename = N'dbcreator'
GO

CREATE LOGIN [mauser] 
   WITH PASSWORD=N'123ross321', 
   DEFAULT_DATABASE=[dispatch_sutton], 
   CHECK_EXPIRATION=OFF, 
   CHECK_POLICY=OFF
GO
EXEC master..sp_addsrvrolemember 
     @loginame = N'mauser', 
     @rolename = N'dbcreator'
GO

CREATE LOGIN [nhuser] 
   WITH PASSWORD=N'123ross321', 
   DEFAULT_DATABASE=[dispatch_production], 
   CHECK_EXPIRATION=OFF, 
   CHECK_POLICY=OFF
GO
EXEC master..sp_addsrvrolemember 
     @loginame = N'nhuser', 
     @rolename = N'dbcreator'
GO
