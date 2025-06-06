---------------------------
-- CREATE VIEW CALENDAR
---------------------------

CREATE VIEW gold.calendar
AS
SELECT 
    *
FROM
    OPENROWSET
        (
            BULK 'https://etlstoragedatalakevk.blob.core.windows.net/silver/AdventureWorks_Calendar/',
            FORMAT = 'PARQUET'
        ) as QUER1

---------------------------
-- CREATE VIEW Customers
---------------------------

CREATE VIEW gold.Customers
AS
SELECT 
    *
FROM
    OPENROWSET
        (
            BULK 'https://etlstoragedatalakevk.blob.core.windows.net/silver/AdventureWorks_Customers/',
            FORMAT = 'PARQUET'
        ) as QUER1

---------------------------
-- CREATE VIEW Product_Categories
---------------------------

CREATE VIEW gold.Product_Categories
AS
SELECT 
    *
FROM
    OPENROWSET
        (
            BULK 'https://etlstoragedatalakevk.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
            FORMAT = 'PARQUET'
        ) as QUER1

---------------------------
-- CREATE VIEW Products
---------------------------

CREATE VIEW gold.Products
AS
SELECT 
    *
FROM
    OPENROWSET
        (
            BULK 'https://etlstoragedatalakevk.blob.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) as QUER1
---------------------------
-- CREATE VIEW Returns
---------------------------

CREATE VIEW gold.returns
AS
SELECT 
    *
FROM
    OPENROWSET
        (
            BULK 'https://etlstoragedatalakevk.blob.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'
        ) as QUER1

  ---------------------------
-- CREATE VIEW Sales
---------------------------

CREATE VIEW gold.Sales
AS
SELECT 
    *
FROM
    OPENROWSET
        (
            BULK 'https://etlstoragedatalakevk.blob.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) as QUER1      

  ---------------------------
-- CREATE VIEW Territories
---------------------------

CREATE VIEW gold.Territories
AS
SELECT 
    *
FROM
    OPENROWSET
        (
            BULK 'https://etlstoragedatalakevk.blob.core.windows.net/silver/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'
        ) as QUER1  