IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'FactOrderLine')
BEGIN
    CREATE TABLE dbo.FactOrderLine
    (
        DateKey INT NOT NULL,
        CustomerKey INT NOT NULL,
        ProductKey INT NOT NULL,
        SiteKey INT NOT NULL,
        SizeKey INT NOT NULL,
        CountryKey INT NOT NULL,
        CurrencyKey INT NOT NULL,

        -- Dimensões degeneradas
        OrderID INT NOT NULL,
        OrderLineID INT NOT NULL,

        Quantity INT NOT NULL,

        UnitPrice_Local MONEY NOT NULL,
        LineTotal_Local MONEY NOT NULL,

        UnitPrice_EUR MONEY NOT NULL,
        LineTotal_EUR MONEY NOT NULL,

        ShippingCost_Local MONEY NULL,
        ShippingCost_EUR MONEY NULL,

        Discount_Local MONEY NULL,
        Discount_EUR MONEY NULL,

        CONSTRAINT PK_FactOrderLine PRIMARY KEY
        (
            DateKey,
            CustomerKey,
            ProductKey,
            SiteKey,
            SizeKey,
            OrderID,
            OrderLineID
        )
    );
END
