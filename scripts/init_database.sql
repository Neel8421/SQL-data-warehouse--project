--Database & Schema Setup

-- Creates the DataWarehouse database, removing any existing version to ensure a clean setup. It then creates three schemas—Bronze, Silver, and Gold—to organize raw, transformed, and analytics-ready data respectively.
-- Running this script will delete database name DataWarehouse if it already exists. All the data in database will be deleted. Proceed with caution.
-- create database 'datawarehouse'
USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
