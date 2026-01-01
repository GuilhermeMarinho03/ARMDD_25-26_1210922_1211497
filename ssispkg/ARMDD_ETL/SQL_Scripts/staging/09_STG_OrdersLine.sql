IF OBJECT_ID('stg.STG_OrdersLine', 'U') IS NOT NULL
    DROP TABLE stg.STG_OrdersLine;
GO

CREATE TABLE stg.STG_OrdersLine (
    OrderLineID     INT             NULL,
    OrderID         INT             NULL,
    ProductID       INT             NULL,
    SizeID          INT             NULL,
    Quantity        INT             NULL,
    UnitPrice       DECIMAL(18,4)    NULL,
    Discount        DECIMAL(18,4)    NULL,
    CurrencyID      INT             NULL,
    CreatedDate     DATETIME         NULL,
    UpdatedDate     DATETIME         NULL,

    LoadDate        DATETIME DEFAULT GETDATE()
);
GO

