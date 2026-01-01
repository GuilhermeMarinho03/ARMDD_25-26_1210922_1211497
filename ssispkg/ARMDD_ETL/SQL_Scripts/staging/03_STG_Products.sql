IF OBJECT_ID('stg.STG_Products','U') IS NOT NULL DROP TABLE stg.STG_Products;
GO

CREATE TABLE stg.STG_Products (
    ProductID       INT           NOT NULL,
    ProductName     VARCHAR(255)  NULL,
    AvailablePortal BIT           NULL,
    BoxID           INT           NULL,
    Active          BIT           NULL,
    CategoryID      INT           NULL,
    CategoryName    VARCHAR(100)  NULL,
    CategoryGender  VARCHAR(20)   NULL,
    CreateDate      DATE          NULL,
    LastUpdateDate  DATE          NULL,
    CONSTRAINT PK_STG_Products PRIMARY KEY (ProductID)
);
GO
