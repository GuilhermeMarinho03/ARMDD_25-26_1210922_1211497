-- Remove a tabela se já existir
IF OBJECT_ID('stg.STG_Currency','U') IS NOT NULL 
    DROP TABLE stg.STG_Currency;
GO

-- Cria tabela de staging
CREATE TABLE stg.STG_Currency (
    CurrencyCode    NVARCHAR(10)   NOT NULL,
    CurrencyName    NVARCHAR(100) NULL,
    CurrencySymbol  NVARCHAR(10)  NULL, -- maior, NVARCHAR para símbolos especiais
    CreateDate      DATE          NULL,
    LastUpdateDate  DATE          NULL,
    CONSTRAINT PK_STG_Currency PRIMARY KEY (CurrencyCode)
);

GO
