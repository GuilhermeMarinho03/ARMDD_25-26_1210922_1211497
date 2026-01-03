IF OBJECT_ID('stg.STG_Orders', 'U') IS NOT NULL
    DROP TABLE stg.STG_Orders;
GO

CREATE TABLE stg.STG_Orders (
    OrderID             INT             NULL,
    OrderDate           DATE            NULL,
    SiteID              INT             NULL,
    CustomerID          INT             NULL,
    TotalQuantity       INT             NULL,
    ShippingCost        MONEY           NULL,
    TotalWithoutShipping MONEY          NULL,
    TotalWithShipping   MONEY           NULL,
    Address             NVARCHAR(255)   NULL,
    CountryID           INT             NULL,
    City                NVARCHAR(255)   NULL,
    State               NVARCHAR(255)   NULL,
    Zip                 NVARCHAR(20)    NULL,
    CurrencyID          NVARCHAR(3)     NULL,
    CreateDate          DATETIME        NULL,
    LastUpdateDate      DATETIME        NULL,
    LoadDate            DATETIME DEFAULT GETDATE()
);
GO