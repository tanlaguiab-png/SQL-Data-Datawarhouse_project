/*
============================================================
DDL Script: Create Bronze Tables
============================================================

Script Purpose:
This script creates tables in the 'bronze' schema, dropping existing tables
if they already exist.
Run this script to re-define the DDL structure of 'bronze' Tables

============================================================
*/

IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
GO

CREATE TABLE bronze.crm_cust_info (
    cst_id                INT,
    cst_key               NVARCHAR(50),
    cst_firstname         NVARCHAR(50),
    cst_lastname          NVARCHAR(50),
    cst_marital_status    NVARCHAR(50),
    cst_addr              NVARCHAR(50),
    cst_create_date       DATE
);
GO

IF OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;
GO

CREATE TABLE bronze.crm_prd_info (
    -- Add column definitions here
);
GO
