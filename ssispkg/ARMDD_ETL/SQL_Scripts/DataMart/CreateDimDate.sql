IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimDate')
BEGIN
    CREATE TABLE dbo.DimDate
    (
        DateKey INT IDENTITY(1,1) NOT NULL,
        FullDate DATE NOT NULL,
        [Year] INT,
        YearName NVARCHAR(20),
        HalfYear TINYINT,
        HalfYearName NVARCHAR(30),
        Quarter TINYINT,
        QuarterName NVARCHAR(30),
        Trimester TINYINT,
        TrimesterName NVARCHAR(30),
        [Month] TINYINT,
        MonthName NVARCHAR(20),
        TenDays TINYINT,
        TenDaysName NVARCHAR(30),
        [Week] TINYINT,
        WeekName NVARCHAR(30),
        DayOfYear INT,
        DayOfMonth TINYINT,
        DayOfWeek TINYINT,
        DayOfWeekName NVARCHAR(20),
        Weekend NVARCHAR(10),
        ISOYear INT,
        ISOYearName NVARCHAR(30),
        ISOWeek TINYINT,
        ISOWeekName NVARCHAR(30),
        ISODayOfWeek TINYINT,
        ISODayOfWeekName NVARCHAR(20),
        Season NVARCHAR(20),
        CONSTRAINT PK_DimDate PRIMARY KEY CLUSTERED (DateKey)
    );
END
GO