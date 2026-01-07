IF OBJECT_ID('dqp.ProductDQP','U') IS NOT NULL
    DROP TABLE dqp.ProductDQP;
GO

CREATE TABLE dqp.ProductDQP
(
    DQPId        INT IDENTITY(1,1) PRIMARY KEY,
    ErrorDate    DATETIME2(3)  NOT NULL DEFAULT SYSDATETIME(),
    Source       NVARCHAR(50)  NOT NULL,
    ErrorType    NVARCHAR(50)  NOT NULL,
    BusinessKey  NVARCHAR(100) NULL,
    Details      NVARCHAR(255) NULL
);
GO