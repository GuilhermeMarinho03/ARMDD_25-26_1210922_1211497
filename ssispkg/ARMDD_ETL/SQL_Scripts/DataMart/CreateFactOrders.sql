IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactOrders')
BEGIN
    CREATE TABLE dbo.FactOrders
    (
        OrderKey INT IDENTITY(1,1) NOT NULL,
        OrderID INT NULL,
        OrderDate DATE NULL,
        SiteID INT NULL,
        CustomerID INT NULL,
        TotalQuantity INT NULL,
        ShippingCost MONEY NULL,
        TotalWithoutShipping MONEY NULL,
        TotalWithShipping MONEY NULL,
        Address NVARCHAR(255) NULL,
        CountryID INT NULL,
        City NVARCHAR(255) NULL,
        State NVARCHAR(255) NULL,
        Zip NVARCHAR(20) NULL,
        CurrencyID NVARCHAR(3) NULL,
        CreateDate DATETIME NULL,
        LastUpdateDate DATETIME NULL,
        LoadDate DATETIME NULL,
        CONSTRAINT PK_FactOrders PRIMARY KEY CLUSTERED (OrderKey ASC)
    );
END
