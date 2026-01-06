IF OBJECT_ID('stg.STG_Categories','U') IS NOT NULL
    DROP TABLE stg.STG_Categories;
GO

CREATE TABLE stg.STG_Categories (
    CategoryID      INT            NOT NULL,
    Name            VARCHAR(255)   NULL,
    Gender          CHAR(1)         NULL,   -- M / F
    CreateDate      DATE           NULL,
    LastUpdateDate  DATE           NULL,
    CONSTRAINT PK_STG_Categories PRIMARY KEY (CategoryID)
);
GO
