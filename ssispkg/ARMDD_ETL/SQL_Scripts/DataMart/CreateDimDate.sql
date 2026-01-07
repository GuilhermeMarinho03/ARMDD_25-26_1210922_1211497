IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'DimDate')
BEGIN
    CREATE TABLE dbo.DimDate (
        DateKey INT IDENTITY(1,1) PRIMARY KEY,
        FullDate DATE NOT NULL,
        [Year] INT NOT NULL,
        [Month] INT NOT NULL,
        MonthName NVARCHAR(20) NOT NULL,
        [Quarter] INT NOT NULL,
        [Day] INT NOT NULL,
        DayOfWeek NVARCHAR(20) NOT NULL,
        Weekend NVARCHAR(20) NOT NULL,
        WeekOfYear INT NOT NULL,
        Season NVARCHAR(20) NOT NULL
    );
END