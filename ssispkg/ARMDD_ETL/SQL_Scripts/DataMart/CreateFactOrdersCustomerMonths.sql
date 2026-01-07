IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'FactOrdersCustomerMonth')
BEGIN
    CREATE TABLE dbo.FactOrdersCustomerMonth
    (
        DateKey INT NOT NULL,          -- mês (ex: 20240101)
        CustomerKey INT NOT NULL,
        CurrencyKey INT NOT NULL,      -- moeda uniformizada (ex: EUR)

        TotalOrders INT NOT NULL,
        TotalQuantity INT NOT NULL,

        TotalSales_Local MONEY NOT NULL,
        TotalSales_EUR MONEY NOT NULL,

        TotalShipping_Local MONEY NOT NULL,
        TotalShipping_EUR MONEY NOT NULL,

        CONSTRAINT PK_FactOrdersCustomerMonth PRIMARY KEY
        (
            DateKey,
            CustomerKey,
            CurrencyKey
        )
    );
END