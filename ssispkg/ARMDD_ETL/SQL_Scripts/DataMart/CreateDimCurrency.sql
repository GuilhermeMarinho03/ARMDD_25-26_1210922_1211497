IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCurrency')
BEGIN
    CREATE TABLE dbo.DimCurrency
    (
        CurrencyKey INT IDENTITY(1,1) NOT NULL,
        CurrencyCode NVARCHAR(10) NOT NULL,
        CurrencyName NVARCHAR(100) NULL,
        CurrencySymbol NVARCHAR(10) NULL,
        CreateDate DATE NULL,
        LastUpdateDate DATE NULL,
        IsCurrent BIT NOT NULL DEFAULT 1,

        CONSTRAINT PK_DimCurrency PRIMARY KEY CLUSTERED (CurrencyKey ASC),
        CONSTRAINT UQ_DimCurrency_CurrencyCode UNIQUE (CurrencyCode)
    );
END
