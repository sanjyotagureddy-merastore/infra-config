USE [master]
GO

-- Create Database and User for Products
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'Products')
BEGIN
    CREATE DATABASE Products;
END
GO

USE Products;
GO

-- Strong Randomly Generated Password for Products user
CREATE LOGIN [mera-store-products] WITH PASSWORD = 'N8d!7q#bL3x@9Pz*';
GO

CREATE USER [mera-store-products] FOR LOGIN [mera-store-products];
GO

ALTER ROLE db_owner ADD MEMBER [mera-store-products];
GO

-- Create Database and User for Users
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'Users')
BEGIN
    CREATE DATABASE Users;
END
GO

USE Users;
GO

-- Strong Randomly Generated Password for Users user
CREATE LOGIN [mera-store-users] WITH PASSWORD = 'C5v@3Fq*P8t$7Ns#';
GO

CREATE USER [mera-store-users] FOR LOGIN [mera-store-users];
GO

ALTER ROLE db_owner ADD MEMBER [mera-store-users];
GO

-- Create Database and User for Inventory
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'Inventory')
BEGIN
    CREATE DATABASE Inventory;
END
GO

USE Inventory;
GO

-- Strong Randomly Generated Password for Inventory user
CREATE LOGIN [mera-store-inventory] WITH PASSWORD = 'G1b$6Rt!Z9s*8Kw@';
GO

CREATE USER [mera-store-inventory] FOR LOGIN [mera-store-inventory];
GO

ALTER ROLE db_owner ADD MEMBER [mera-store-inventory];
GO

-- Create Database and User for Cart
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'Cart')
BEGIN
    CREATE DATABASE Cart;
END
GO

USE Cart;
GO

-- Strong Randomly Generated Password for Cart user
CREATE LOGIN [mera-store-cart] WITH PASSWORD = 'Y2h@4Kq*W7v!1Lp$';
GO

CREATE USER [mera-store-cart] FOR LOGIN [mera-store-cart];
GO

ALTER ROLE db_owner ADD MEMBER [mera-store-cart];
GO

-- Create Database and User for Orders
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'Orders')
BEGIN
    CREATE DATABASE Orders;
END
GO

USE Orders;
GO

-- Strong Randomly Generated Password for Orders user
CREATE LOGIN [mera-store-orders] WITH PASSWORD = 'F9j$2Nq@P4m*6Vz#';
GO

CREATE USER [mera-store-orders] FOR LOGIN [mera-store-orders];
GO

ALTER ROLE db_owner ADD MEMBER [mera-store-orders];
GO

-- Create Database and User for Authentication
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'Authentication')
BEGIN
    CREATE DATABASE Authentication;
END
GO

USE Authentication;
GO

-- Strong Randomly Generated Password for Authentication user
CREATE LOGIN [mera-store-authentication] WITH PASSWORD = 'S7g@8Bc#T5h*3Xd$';
GO

CREATE USER [mera-store-authentication] FOR LOGIN [mera-store-authentication];
GO

ALTER ROLE db_owner ADD MEMBER [mera-store-authentication];
GO

-- Create Database and User for Logging
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'Logging')
BEGIN
    CREATE DATABASE Logging;
END
GO

USE Logging;
GO

-- Strong Randomly Generated Password for Logging user
CREATE LOGIN [mera-store-logging] WITH PASSWORD = 'J6k*9Pt@X2v#1Qc$';
GO

CREATE USER [mera-store-logging] FOR LOGIN [mera-store-logging];
GO

ALTER ROLE db_owner ADD MEMBER [mera-store-logging];
GO
