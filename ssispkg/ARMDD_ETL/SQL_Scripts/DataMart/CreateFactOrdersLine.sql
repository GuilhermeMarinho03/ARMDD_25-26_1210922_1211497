IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactOrdersLine')
BEGIN
    CREATE TABLE dbo.FactOrdersLine
    (
        OrderLineKey INT IDENTITY(1,1) NOT NULL,
        OrderLineID INT NOT NULL,
        OrderID INT NULL,
        ProductID INT NULL,
        SizeID INT NULL,
        Quantity INT NULL,
        UnitPrice DECIMAL(18,4) NULL,
        CreatedDate VARCHAR(20) NULL,
        UpdatedDate VARCHAR(20) NULL,
        CONSTRAINT PK_FactOrdersLine PRIMARY KEY CLUSTERED (OrderLineKey ASC)
    );
END
