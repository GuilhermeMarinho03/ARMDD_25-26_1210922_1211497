IF OBJECT_ID('stg.STG_Sites','U') IS NOT NULL 
    DROP TABLE stg.STG_Sites;
GO

CREATE TABLE stg.STG_Sites (
    SiteID         INT           NOT NULL,
    SiteName       VARCHAR(255)  NULL,
    IsSite         BIT           NULL,
    SiteURL        VARCHAR(255)  NULL,
    Name           VARCHAR(255)  NULL,
    Initials       VARCHAR(20)   NULL,
    CurrencyCode   VARCHAR(10)   NULL,
    CreateDate     DATE          NULL,
    LastUpdateDate DATE          NULL,
    CONSTRAINT PK_STG_Sites PRIMARY KEY (SiteID)
);
GO
