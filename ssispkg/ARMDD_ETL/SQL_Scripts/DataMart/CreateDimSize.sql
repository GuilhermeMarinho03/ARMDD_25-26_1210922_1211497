IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSize')
BEGIN
    CREATE TABLE dbo.DimSize
    (
        SizeKey INT IDENTITY(1,1) NOT NULL,
        SizeID INT NOT NULL,
        SizeName NVARCHAR(255) NULL,
        FriendlyName NVARCHAR(255) NULL,
        MinSize INT NULL,
        MaxSize INT NULL,
        IsVisible BIT NULL,
        CONSTRAINT PK_DimSize
            PRIMARY KEY CLUSTERED (SizeKey)
    );
END;
GO
