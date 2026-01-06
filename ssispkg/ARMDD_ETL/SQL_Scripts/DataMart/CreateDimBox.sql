IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimBox')
BEGIN
    CREATE TABLE dbo.DimBox
    (
        BoxKey INT IDENTITY(1,1) NOT NULL,
        BoxID INT NOT NULL,
        BoxName VARCHAR(100) NULL,
        BoxHeight DECIMAL(10,2) NULL,
        BoxLength DECIMAL(10,2) NULL,
        BoxWidth DECIMAL(10,2) NULL,
        BoxVolWeight DECIMAL(10,2) NULL,
        Location VARCHAR(50) NULL,
        CreateDate DATE NULL,
        LastUpdateDate DATE NULL,
        CONSTRAINT PK_DimBox PRIMARY KEY CLUSTERED (BoxKey ASC)
    );
END