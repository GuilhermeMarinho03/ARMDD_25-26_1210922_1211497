IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'dqp')
    EXEC('CREATE SCHEMA dqp');
GO
