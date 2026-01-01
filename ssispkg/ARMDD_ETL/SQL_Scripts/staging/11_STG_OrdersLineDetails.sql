IF OBJECT_ID('stg.STG_OrdersLineDetails', 'U') IS NOT NULL
    DROP TABLE stg.STG_OrdersLineDetails;
GO

CREATE TABLE stg.STG_OrdersLineDetails (
    OrderLineID        INT             NULL,
    TaxAmount          DECIMAL(18,4)    NULL,
    ShippingCost       DECIMAL(18,4)    NULL,
    PromotionCode      VARCHAR(100)     NULL,
    PromotionAmount    DECIMAL(18,4)    NULL,
    LineStatus         VARCHAR(50)      NULL,

    LoadDate           DATETIME DEFAULT GETDATE()
);
GO
