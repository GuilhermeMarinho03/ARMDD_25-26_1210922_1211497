IF OBJECT_ID('stg.STG_OrdersLine', 'U') IS NOT NULL
    DROP TABLE stg.STG_OrdersLine;
GO

CREATE TABLE stg.STG_OrdersLine (
    OrderLineID INT NOT NULL,
    OrderID     INT NULL,
    ProductID   INT NULL,
    SizeID      INT NULL,
    Quantity    INT NULL,
    UnitPrice   DECIMAL(18,4) NULL,
    CreatedDate VARCHAR(20),
    UpdatedDate VARCHAR(20)
);
GO
