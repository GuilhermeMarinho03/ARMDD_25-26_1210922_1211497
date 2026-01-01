IF OBJECT_ID('stg.STG_Sites','U') IS NOT NULL DROP TABLE stg.STG_Sites;
GO

CREATE TABLE stg.STG_Sites (
    SiteID         INT           NOT NULL,
    SiteURL        VARCHAR(255)  NULL,
    SiteName       VARCHAR(255)  NULL,
    Name           VARCHAR(255)  NULL,
    Initials       VARCHAR(20)   NULL,
    IsSite         BIT           NULL,
    Phone          VARCHAR(50)   NULL,
    CurrencyCode   VARCHAR(10)   NULL,
    CountryID      INT           NULL,
    CountryName    VARCHAR(100)  NULL,
    CountryISOCode VARCHAR(10)   NULL,
    SitesEU        BIT           NULL,
    SitesEuroZone  BIT           NULL,
    FullAddress    VARCHAR(255)  NULL,
    ZipCity        VARCHAR(100)  NULL,
    StoreContact   VARCHAR(255)  NULL,
    PickupHour     VARCHAR(20)   NULL,
    DailyPickup    VARCHAR(20)   NULL,
    TimeZone       VARCHAR(50)   NULL,
    CreateDate     DATE          NULL,
    LastUpdateDate DATE          NULL,
    CONSTRAINT PK_STG_Sites PRIMARY KEY (SiteID)
);
GO
