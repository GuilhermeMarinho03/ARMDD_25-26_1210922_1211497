IF OBJECT_ID('stg.STG_Sizes','U') IS NOT NULL DROP TABLE stg.STG_Sizes;
GO

CREATE TABLE stg.STG_Sizes (
    SizeID               INT           NOT NULL,
    Name                 VARCHAR(255)  NULL,
    FriendlyName         VARCHAR(255)  NULL,
    RetailInvisible      BIT           NULL,
    MinimumSizeAvailable VARCHAR(50)   NULL,
    MaximumSizeAvailable VARCHAR(50)   NULL,
    CreateDate           DATE          NULL,
    LastUpdateDate       DATE          NULL
);
GO
