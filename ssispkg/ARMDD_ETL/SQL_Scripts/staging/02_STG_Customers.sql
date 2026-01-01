-- CUSTOMERS
IF OBJECT_ID('stg.STG_Customers','U') IS NOT NULL DROP TABLE stg.STG_Customers;
CREATE TABLE stg.STG_Customers (
    CustomerID        INT           NOT NULL,
    DateOfBirth       DATE          NULL,
    Gender            VARCHAR(10)   NULL,
    GeographicRegion  VARCHAR(50)   NULL,
    [Language]        VARCHAR(50)   NULL,
    IsVipCustomer     BIT           NULL,
    RegistrationDate  DATE          NULL,
    LastUpdateDate    DATE          NULL,
    CountryID         INT           NULL,
    CONSTRAINT PK_STG_Customers PRIMARY KEY (CustomerID)
);