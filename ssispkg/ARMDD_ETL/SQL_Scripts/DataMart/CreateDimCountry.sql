IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCountry')
BEGIN
    CREATE TABLE dbo.Country (
    CountryID      INT           NOT NULL,
    CountryName    VARCHAR(100)  NULL,
    CountryCode    VARCHAR(10)   NULL,
    VATRate        DECIMAL(5,2)  NULL,
    IsEuroZone     BIT           NULL,
    CreateDate     DATE          NULL,
    LastUpdateDate DATE          NULL,
    CONSTRAINT PK_DimCountry PRIMARY KEY (CountryID)
    );
END