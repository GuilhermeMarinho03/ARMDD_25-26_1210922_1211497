IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')
BEGIN
    CREATE TABLE dbo.DimCustomer
    (
        CustomerKey INT IDENTITY(1,1) NOT NULL,
        CustomerID INT NOT NULL,
        DateOfBirth VARCHAR(20) NULL,
        Gender VARCHAR(20) NULL,
        GeographicRegion VARCHAR(50) NULL,
        [Language] VARCHAR(50) NULL,
        IsVipCustomer VARCHAR(5) NULL,
        RegistrationDate VARCHAR(20) NULL,
        LastUpdateDate VARCHAR(20) NULL,
        CountryID VARCHAR(10) NULL,
        CONSTRAINT PK_DimCustomer PRIMARY KEY CLUSTERED (CustomerKey ASC),
        CONSTRAINT UQ_DimCustomer_CustomerID UNIQUE (CustomerID)
    );
END