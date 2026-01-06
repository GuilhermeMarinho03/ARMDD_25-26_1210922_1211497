IF OBJECT_ID('stg.STG_Sites','U') IS NOT NULL 
    DROP TABLE stg.STG_Sites;
GO

CREATE TABLE stg.STG_Sites (
    -- Chave
    SiteID            INT            NOT NULL,

    -- Dados base (Sites)
    SiteName          VARCHAR(255)   NULL,
    Name              VARCHAR(255)   NULL,
    Initials          VARCHAR(20)    NULL,
    IsSite            BIT            NULL,
    SiteURL           VARCHAR(255)   NULL,
    CurrencyCode      VARCHAR(10)    NULL,

    -- Dados complementares (SitesInfo)
    StoreContact      VARCHAR(255)   NULL,
    AddressLine1      VARCHAR(255)   NULL,
    AddressLine2      VARCHAR(255)   NULL,
    Zip_City          VARCHAR(50)    NULL,
    CountryID         INT            NULL,
    Phone             VARCHAR(30)    NULL,
    PickupHour        INT            NULL,
    DailyPickup       BIT            NULL,
    TimeZone          VARCHAR(50)    NULL,

    -- Datas (regra: maior das duas no ETL)
    CreateDate        DATE           NULL,
    LastUpdateDate    DATE           NULL,

    CONSTRAINT PK_STG_Sites PRIMARY KEY (SiteID)
);
GO
