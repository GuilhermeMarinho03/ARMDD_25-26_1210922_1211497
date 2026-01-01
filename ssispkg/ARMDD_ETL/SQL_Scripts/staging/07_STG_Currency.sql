IF OBJECT_ID('stg.STG_Currency','U') IS NOT NULL DROP TABLE stg.STG_Currency;
GO

CREATE TABLE stg.STG_Currency (
    CurrencyID     VARCHAR(10)   NOT NULL,
    CurrencyCode   VARCHAR(10)   NULL,
    CurrencyName   VARCHAR(100)  NULL,
    CurrencySymbol VARCHAR(10)   NULL,
    CreateDate     DATE          NULL,
    LastUpdateDate DATE          NULL,
    CONSTRAINT PK_STG_Currency PRIMARY KEY (CurrencyID)
);
GO
