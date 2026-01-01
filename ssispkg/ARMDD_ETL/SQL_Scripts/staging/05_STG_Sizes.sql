IF OBJECT_ID('stg.STG_Sizes','U') IS NOT NULL DROP TABLE stg.STG_Sizes;
GO

CREATE TABLE stg.STG_Sizes (
    SizeID               INT            NOT NULL,
    Name                 VARCHAR(50)    NULL,
    FriendlyName         VARCHAR(50)    NULL,
    RetailInvisible      BIT            NULL,
    MinimumSizeAvailable DECIMAL(10,2)  NULL,
    MaximumSizeAvailable DECIMAL(10,2)  NULL,
    CreateDate           DATE           NULL,
    LastUpdateDate       DATE           NULL,
    CONSTRAINT PK_STG_Sizes PRIMARY KEY (SizeID)
);
GO
