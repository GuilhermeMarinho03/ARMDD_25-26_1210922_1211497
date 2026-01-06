IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProduct')
BEGIN
    CREATE TABLE dbo.DimProduct
    (
        ProductKey INT IDENTITY(1,1) NOT NULL,
        ProductID INT NOT NULL,
        ProductName VARCHAR(255) NULL,
        AvailablePortal INT NULL,
        BoxID INT NULL,
        Active INT NULL,
        CategoryID INT NULL,
        CreateDate DATE NULL,
        LastUpdateDate DATE NULL,
        CONSTRAINT PK_DimProduct PRIMARY KEY CLUSTERED (ProductKey ASC),
    );
END
