IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'DimProduct' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    CREATE TABLE dbo.DimProduct
    (
        ProductKey       INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimProduct PRIMARY KEY,
        ProductID        INT NOT NULL,
        ProductName      NVARCHAR(255) NULL,
        AvailablePortal  INT NULL,
        BoxID            INT NULL,
        Active           INT NULL,
        CategoryID       INT NULL,
        CreateDate       DATE NULL,
        LastUpdateDate   DATE NULL,

        -- SCD Type 2 control columns
        ValidFrom        DATETIME2(0) NOT NULL CONSTRAINT DF_DimProduct_ValidFrom DEFAULT SYSDATETIME(),
        ValidTo          DATETIME2(0) NOT NULL CONSTRAINT DF_DimProduct_ValidTo   DEFAULT ('9999-12-31'),
        IsCurrent        BIT          NOT NULL CONSTRAINT DF_DimProduct_IsCurrent DEFAULT (1)
    );
END
GO
