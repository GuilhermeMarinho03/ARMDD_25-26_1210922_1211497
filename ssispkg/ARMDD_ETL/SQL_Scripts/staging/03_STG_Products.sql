IF OBJECT_ID('stg.STG_Products','U') IS NOT NULL 
    DROP TABLE stg.STG_Products;
GO

CREATE TABLE stg.STG_Products (
    ProductID       INT           NOT NULL,
    ProductName     VARCHAR(255)  NULL,
    AvailablePortal INT           NULL,   -- BIT dava erro se vazio, INT aceita 0,1 ou NULL
    BoxID           INT           NULL,
    Active          INT           NULL,   -- BIT dava erro se vazio, INT aceita 0,1 ou NULL
    CategoryID      INT           NULL,
    CreateDate      DATE          NULL,
    LastUpdateDate  DATE          NULL,
);
GO
