IF OBJECT_ID('stg.STG_Country','U') IS NOT NULL DROP TABLE stg.STG_Country;
GO

CREATE TABLE stg.STG_Country (
    CountryID      INT           NOT NULL,
    CountryName    VARCHAR(100)  NULL,
    CountryCode    VARCHAR(10)   NULL,
    VATRate        DECIMAL(5,2)  NULL,
    IsEuroZone     BIT           NULL,
    CreateDate     DATE          NULL,
    LastUpdateDate DATE          NULL,
    CONSTRAINT PK_STG_Country PRIMARY KEY (CountryID)
);
GO
