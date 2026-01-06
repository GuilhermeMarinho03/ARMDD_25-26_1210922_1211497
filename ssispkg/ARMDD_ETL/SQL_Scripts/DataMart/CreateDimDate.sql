IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimDate')
BEGIN
    CREATE TABLE dbo.DimDate
    (
        DateKey INT IDENTITY(1,1) NOT NULL,
        FullDate DATE NULL,
        [Year] INT NULL,
        [Month] TINYINT NULL,
        DayNumberOfYear INT NULL,
        DayNumberOfMonth TINYINT NULL,
        DayNumberOfWeek TINYINT NULL,
        [Week] TINYINT NULL,
        DayOfWeek NVARCHAR(20) NULL,       
        Weekend NVARCHAR(10) NULL,         
        MonthName NVARCHAR(20) NULL,       
        Quarter TINYINT NULL,              
        Semester TINYINT NULL,             
        Trimester TINYINT NULL,            
        Season NVARCHAR(20) NULL,          
        CONSTRAINT PK_DimDate
            PRIMARY KEY CLUSTERED (DateKey)
    );
END;
GO