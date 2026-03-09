CREATE TABLE dbo.Customers (
    Customer_ID   VARCHAR(50)  NOT NULL PRIMARY KEY,
    Customer_Name VARCHAR(200) NOT NULL,
    Segment       VARCHAR(50)  NOT NULL
);
CREATE TABLE dbo.Orders (
    Order_ID VARCHAR(50) NOT NULL PRIMARY KEY,
    Order_Date DATE NOT NULL,
    Ship_Date DATE NOT NULL,
    Ship_Mode VARCHAR(50) NOT NULL,
    Customer_ID VARCHAR(50) NOT NULL,

    Country VARCHAR(50) NOT NULL,
    State VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Postal_Code VARCHAR(20),
    Region VARCHAR(50) NOT NULL,

    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (Customer_ID)
        REFERENCES dbo.Customers(Customer_ID)
);
