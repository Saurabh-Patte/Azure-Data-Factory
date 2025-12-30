-------------------------
--CREATE VIEW Calendar
-------------------------
CREATE or ALTER VIEW gold.calendar AS select * from OPENROWSET(
    BULK'https://awstoragedatalakespatte.dfs.core.windows.net/silver/T_Calendar/',
                            FORMAT = 'Parquet'        ) 
                            as Query_Calendar;   GO   

-------------------------
--CREATE VIEW Customers
-------------------------
CREATE or ALTER VIEW gold.Customers AS select * from OPENROWSET(
    BULK'https://awstoragedatalakespatte.dfs.core.windows.net/silver/T_Customers/',
                            FORMAT = 'Parquet'        ) 
                            as Query_Customers;   GO   

-------------------------
--CREATE VIEW ProductCategory
-------------------------
CREATE or ALTER VIEW gold.ProductCategory AS select * from OPENROWSET(
    BULK'https://awstoragedatalakespatte.dfs.core.windows.net/silver/T_ProductCategory/',
                            FORMAT = 'Parquet'        ) 
                            as Query_ProductCategory;   GO   
-------------------------
--CREATE VIEW Product_Subcategories
-------------------------
CREATE or ALTER VIEW gold.Product_Subcategories AS select * from OPENROWSET(
    BULK'https://awstoragedatalakespatte.dfs.core.windows.net/silver/T_Product_Subcategories/',
                            FORMAT = 'Parquet'        ) 
                            as Query_Product_Subcategories;   GO   
-------------------------
--CREATE VIEW Products
-------------------------
CREATE or ALTER VIEW gold.Products AS select * from OPENROWSET(
    BULK'https://awstoragedatalakespatte.dfs.core.windows.net/silver/T_Products/',
                            FORMAT = 'Parquet'        ) 
                            as Query_Products;    GO   
-------------------------
--CREATE VIEW Returns
-------------------------
CREATE or ALTER VIEW gold.[Returns] AS select * from OPENROWSET(
    BULK'https://awstoragedatalakespatte.dfs.core.windows.net/silver/T_Returns/',
                            FORMAT = 'Parquet'        ) 
                            as Query_Returns;    GO   
-------------------------
--CREATE VIEW Sales
-------------------------
CREATE or ALTER VIEW gold.Sales AS select * from OPENROWSET(
    BULK'https://awstoragedatalakespatte.dfs.core.windows.net/silver/T_Sales/',
                            FORMAT = 'Parquet'        ) 
                            as Query_Sales;        GO              
-------------------------
--CREATE VIEW Territories
-------------------------
CREATE or ALTER VIEW gold.Territories AS select * from OPENROWSET(
    BULK'https://awstoragedatalakespatte.dfs.core.windows.net/silver/T_Territories/',
                            FORMAT = 'Parquet'        ) 
                            as Query_Territories;    GO   