IF OBJECT_ID('stg.STG_Customers','U') IS NOT NULL DROP TABLE stg.STG_Customers;
CREATE TABLE stg.STG_Customers (
    CustomerID        INT           NOT NULL,
    DateOfBirth       VARCHAR(20)   NULL,
    Gender            VARCHAR(20)   NULL,
    GeographicRegion  VARCHAR(50)   NULL,
    [Language]        VARCHAR(50)   NULL,
    IsVipCustomer     VARCHAR(5)    NULL,
    RegistrationDate  VARCHAR(20)   NULL,
    LastUpdateDate    VARCHAR(20)   NULL,
    CountryID         VARCHAR(10)   NULL,  
    CONSTRAINT PK_STG_Customers PRIMARY KEY (CustomerID)
);
