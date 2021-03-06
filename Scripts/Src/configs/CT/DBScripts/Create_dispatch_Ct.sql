CREATE DATABASE [dispatch_ct] ON  PRIMARY 
( NAME = N'dispatch_ct', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SX\MSSQL\DATA\dispatch_ct.mdf' , SIZE = 2048KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dispatch_ct_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SX\MSSQL\DATA\dispatch_ct_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dispatch_ct] SET COMPATIBILITY_LEVEL = 100
GO
ALTER DATABASE [dispatch_ct] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dispatch_ct] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dispatch_ct] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dispatch_ct] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dispatch_ct] SET ARITHABORT OFF 
GO
ALTER DATABASE [dispatch_ct] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dispatch_ct] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [dispatch_ct] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dispatch_ct] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dispatch_ct] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dispatch_ct] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dispatch_ct] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dispatch_ct] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dispatch_ct] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dispatch_ct] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dispatch_ct] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dispatch_ct] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dispatch_ct] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dispatch_ct] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dispatch_ct] SET  READ_WRITE 
GO
ALTER DATABASE [dispatch_ct] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dispatch_ct] SET  MULTI_USER 
GO
ALTER DATABASE [dispatch_ct] SET PAGE_VERIFY CHECKSUM  
GO
USE [dispatch_ct]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [dispatch_ct] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO
