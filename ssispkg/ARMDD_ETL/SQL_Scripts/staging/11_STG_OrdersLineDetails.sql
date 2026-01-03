IF OBJECT_ID('stg.STG_OrdersLineDetails', 'U') IS NOT NULL
    DROP TABLE stg.STG_OrdersLineDetails;
GO

CREATE TABLE stg.STG_OrdersLineDetails (
    OrderLineID        INT NOT NULL,
    Currency           NVARCHAR(3) NULL,
    Discount           MONEY NULL,
    PromotionDiscount  MONEY NULL,
    CreatedDate        DATE NULL,
    LastUpdateDate     DATE NULL,
);
GO
