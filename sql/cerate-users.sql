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

-- Strong Password for Products user
CREATE LOGIN [mera-store-products] WITH PASSWORD = 'P@ssw0rd!2024$Prod';
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

-- Strong Password for Users user
CREATE LOGIN [mera-store-users] WITH PASSWORD = 'Us3rP@ssw0rd!2024';
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

-- Strong Password for Inventory user
CREATE LOGIN [mera-store-inventory] WITH PASSWORD = 'Inv3nt0ry!2024$Pwd';
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

-- Strong Password for Cart user
CREATE LOGIN [mera-store-cart] WITH PASSWORD = 'C@rtP@ssw0rd2024$';
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

-- Strong Password for Orders user
CREATE LOGIN [mera-store-orders] WITH PASSWORD = '0rd3r$P@ssw0rd2024';
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

-- Strong Password for Authentication user
CREATE LOGIN [mera-store-authentication] WITH PASSWORD = 'AuthP@ssw0rd2024$';
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

-- Strong Password for Logging user
CREATE LOGIN [mera-store-logging] WITH PASSWORD = 'L0gG!ngP@ssw0rd2024$';
GO

CREATE USER [mera-store-logging] FOR LOGIN [mera-store-logging];
GO

ALTER ROLE db_owner ADD MEMBER [mera-store-logging];
GO
