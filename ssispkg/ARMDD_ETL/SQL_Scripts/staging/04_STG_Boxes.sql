IF OBJECT_ID('stg.STG_Boxes','U') IS NOT NULL DROP TABLE stg.STG_Boxes;
GO

CREATE TABLE stg.STG_Boxes (
    BoxID          INT           NOT NULL,
    BoxName        VARCHAR(100)  NULL,
    BoxHeight      DECIMAL(10,2) NULL,
    BoxLength      DECIMAL(10,2) NULL,
    BoxWidth       DECIMAL(10,2) NULL,
    BoxVolWeight   DECIMAL(10,2) NULL,
    Location       VARCHAR(50)   NULL,
    CreateDate     DATE          NULL,
    LastUpdateDate DATE          NULL,
    CONSTRAINT PK_STG_Boxes PRIMARY KEY (BoxID)
);
GO
