IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCountry')
BEGIN
    CREATE TABLE dbo.DimCountry
    (
        CountryKey INT IDENTITY(1,1) NOT NULL,
        CountryID INT NOT NULL,
        CountryName VARCHAR(100) NULL,
        CountryCode VARCHAR(10) NULL,
        VATRate DECIMAL(5,2) NULL,
        IsEuroZone BIT NULL,
        CreateDate DATE NULL,
        LastUpdateDate DATE NULL,
        CONSTRAINT PK_DimCountry_Key PRIMARY KEY CLUSTERED (CountryKey ASC)
    );
END
