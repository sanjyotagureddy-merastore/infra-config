USE [master];
GO

-- Drop Users and Logins
-- Authentication
IF EXISTS (SELECT * FROM sys.sql_logins WHERE name = N'mera-store-authentication')
BEGIN
    USE [Authentication];
    IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-authentication')
    BEGIN
        DROP USER [mera-store-authentication];
    END
    USE [master];
    DROP LOGIN [mera-store-authentication];
END
GO

-- Orders
IF EXISTS (SELECT * FROM sys.sql_logins WHERE name = N'mera-store-orders')
BEGIN
    USE [Orders];
    IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-orders')
    BEGIN
        DROP USER [mera-store-orders];
    END
    USE [master];
    DROP LOGIN [mera-store-orders];
END
GO

-- Cart
IF EXISTS (SELECT * FROM sys.sql_logins WHERE name = N'mera-store-cart')
BEGIN
    USE [Cart];
    IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-cart')
    BEGIN
        DROP USER [mera-store-cart];
    END
    USE [master];
    DROP LOGIN [mera-store-cart];
END
GO

-- Inventory
IF EXISTS (SELECT * FROM sys.sql_logins WHERE name = N'mera-store-inventory')
BEGIN
    USE [Inventory];
    IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-inventory')
    BEGIN
        DROP USER [mera-store-inventory];
    END
    USE [master];
    DROP LOGIN [mera-store-inventory];
END
GO

-- Users
IF EXISTS (SELECT * FROM sys.sql_logins WHERE name = N'mera-store-users')
BEGIN
    USE [Users];
    IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-users')
    BEGIN
        DROP USER [mera-store-users];
    END
    USE [master];
    DROP LOGIN [mera-store-users];
END
GO

-- Products
IF EXISTS (SELECT * FROM sys.sql_logins WHERE name = N'mera-store-products')
BEGIN
    USE [Products];
    IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-products')
    BEGIN
        DROP USER [mera-store-products];
    END
    USE [master];
    DROP LOGIN [mera-store-products];
END
GO

-- Logging
IF EXISTS (SELECT * FROM sys.sql_logins WHERE name = N'mera-store-logging')
BEGIN
    USE [Logging];
    IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-logging')
    BEGIN
        DROP USER [mera-store-logging];
    END
    USE [master];
    DROP LOGIN [mera-store-logging];
END
GO

-- Drop Databases
-- Authentication
IF EXISTS (SELECT * FROM sys.databases WHERE name = N'Authentication')
BEGIN
    DROP DATABASE Authentication;
END
GO

-- Orders
IF EXISTS (SELECT * FROM sys.databases WHERE name = N'Orders')
BEGIN
    DROP DATABASE Orders;
END
GO

-- Cart
IF EXISTS (SELECT * FROM sys.databases WHERE name = N'Cart')
BEGIN
    DROP DATABASE Cart;
END
GO

-- Inventory
IF EXISTS (SELECT * FROM sys.databases WHERE name = N'Inventory')
BEGIN
    DROP DATABASE Inventory;
END
GO

-- Users
IF EXISTS (SELECT * FROM sys.databases WHERE name = N'Users')
BEGIN
    DROP DATABASE Users;
END
GO

-- Products
IF EXISTS (SELECT * FROM sys.databases WHERE name = N'Products')
BEGIN
    DROP DATABASE Products;
END
GO

-- Logging
IF EXISTS (SELECT * FROM sys.databases WHERE name = N'Logging')
BEGIN
    DROP DATABASE Logging;
END
GO
