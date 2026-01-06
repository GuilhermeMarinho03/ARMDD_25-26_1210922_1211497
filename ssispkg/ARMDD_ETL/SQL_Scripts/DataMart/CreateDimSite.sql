IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSite')
BEGIN
    CREATE TABLE dbo.DimSite
    (
        SiteKey INT IDENTITY(1,1) NOT NULL,
        SiteID INT NOT NULL,
        SiteName VARCHAR(255) NULL,
        IsSite BIT NULL,
        SiteURL VARCHAR(255) NULL,
        Name VARCHAR(255) NULL,
        Initials VARCHAR(20) NULL,
        CurrencyCode VARCHAR(10) NULL,
        CreateDate DATE NULL,
        LastUpdateDate DATE NULL,
        CONSTRAINT PK_DimSite PRIMARY KEY CLUSTERED (SiteKey ASC)
    );
END