/*
============================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
============================================================
Script Purpose:
This stored procedure loads data into the 'bronze' schema from external CSV files.
It performs the following actions:
- Truncates the bronze tables before loading data.
- Uses the 'BULK INSERT' command to load data from CSV Files to bronze tables.

Parameters:
None.
This stored procedure does not accept any parameters or return any values.

Usage Example:
EXEC bronze.load_bronze;
============================================================
*/

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
    DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME;
    BEGIN TRY
        SET @batch_start_time = GETDATE();
        PRINT '***********************************************';
        PRINT 'Loading Bronze Layer';
        PRINT '***********************************************';

        PRINT 'Loading CRM Tables';
        PRINT '***********************************************';

        -- Add TRUNCATE and BULK INSERT logic here
    END TRY
    BEGIN CATCH
        PRINT 'Error occurred during Bronze Layer loading.';
        -- Optional: Add error handling logic
    END CATCH
END;
GO
