IF OBJECT_ID('stg.STG_CurrencyRate','U') IS NOT NULL DROP TABLE stg.STG_CurrencyRate;
GO

CREATE TABLE stg.STG_CurrencyRate (
    FullDate                DATE          NOT NULL,
    SourceCurrencyCode      VARCHAR(10)   NOT NULL,
    DestinationCurrencyCode VARCHAR(10)   NOT NULL,
    ExchangeRate            DECIMAL(18,6) NULL,
    InverseExchangeRate     DECIMAL(18,6) NULL,
    CONSTRAINT PK_STG_CurrencyRate PRIMARY KEY (FullDate, SourceCurrencyCode, DestinationCurrencyCode)
);
GO
