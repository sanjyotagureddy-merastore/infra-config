USE [master];
GO

-- Drop Database Users
-- Authentication
IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-logging')
BEGIN
    DROP USER [mera-store-logging];
    DROP LOGIN [mera-store-logging];
END
GO

-- Orders
IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-orders')
BEGIN
    DROP USER [mera-store-orders];
    DROP LOGIN [mera-store-orders];
END
GO

-- Cart
IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-cart')
BEGIN
    DROP USER [mera-store-cart];
    DROP LOGIN [mera-store-cart];
END
GO

-- Inventory
IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-inventory')
BEGIN
    DROP USER [mera-store-inventory];
    DROP LOGIN [mera-store-inventory];
END
GO

-- Users
IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-users')
BEGIN
    DROP USER [mera-store-users];
    DROP LOGIN [mera-store-users];
END
GO

-- Products
IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'mera-store-products')
BEGIN
    DROP USER [mera-store-products];
    DROP LOGIN [mera-store-products];
END
GO

-- Drop Databases
-- Authentication
IF EXISTS (SELECT * FROM sys.databases WHERE name = N'Logging')
BEGIN
    DROP DATABASE Logging;
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
