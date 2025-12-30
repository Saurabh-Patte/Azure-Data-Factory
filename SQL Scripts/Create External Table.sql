CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Saurabh@123'

CREATE DATABASE SCOPED CREDENTIAL Cred_Saurabh
WITH
    IDENTITY = 'Managed Identity'

--create the data source for silver layer
CREATE EXTERNAL DATA SOURCE Source_Silver WITH (
    LOCATION = 'https://awstoragedatalakespatte.dfs.core.windows.net/silver',
    CREDENTIAL = Cred_Saurabh
);
GO
--create the data source for gold layer
CREATE EXTERNAL DATA SOURCE Source_Gold WITH (
    LOCATION = 'https://awstoragedatalakespatte.dfs.core.windows.net/gold',
    CREDENTIAL = Cred_Saurabh
); --drop EXTERNAL DATA SOURCE Source_Silver
GO

CREATE EXTERNAL FILE FORMAT format_parquet WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)
----------------------------------
--CREATE EXTERNAL TABLE EXTSALES
----------------------------------
CREATE EXTERNAL TABLE gold.extsales WITH (
    LOCATION = 'extsales',
    DATA_SOURCE = Source_Gold,
    FILE_FORMAT = format_parquet
) AS SELECT * FROM gold.Sales

Select * from gold.extsales

CREATE EXTERNAL TABLE gold.extsales1 WITH (
    LOCATION = 'extsales1',
    DATA_SOURCE = Source_Gold,
    FILE_FORMAT = format_parquet
) AS SELECT * FROM gold.Sales
Select * from gold.extsales1

