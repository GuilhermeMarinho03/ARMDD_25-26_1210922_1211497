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

        UnitPrice_Local MONEY,
        LineTotal_Local MONEY,

        UnitPrice_EUR MONEY,
        LineTotal_EUR MONEY,

        ShippingCost_Local MONEY,
        ShippingCost_EUR MONEY,

        Discount_Local MONEY,
        Discount_EUR MONEY,

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
