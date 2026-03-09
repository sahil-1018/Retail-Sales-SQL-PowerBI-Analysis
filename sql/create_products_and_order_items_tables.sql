CREATE TABLE dbo.Products (
    Product_ID   VARCHAR(50)  NOT NULL PRIMARY KEY,
    Product_Name VARCHAR(255) NOT NULL,
    Category     VARCHAR(50)  NOT NULL,
    Sub_Category VARCHAR(50)  NOT NULL
);
CREATE TABLE dbo.Order_Items (
    Row_ID     INT NOT NULL PRIMARY KEY,
    Order_ID   VARCHAR(50) NOT NULL,
    Product_ID VARCHAR(50) NOT NULL,

    Sales      DECIMAL(18,2) NOT NULL,
    Quantity   INT           NOT NULL,
    Discount   DECIMAL(6,4)  NOT NULL,
    Profit     DECIMAL(18,2) NOT NULL,

    CONSTRAINT FK_OrderItems_Orders
        FOREIGN KEY (Order_ID)
        REFERENCES dbo.Orders(Order_ID),

    CONSTRAINT FK_OrderItems_Products
        FOREIGN KEY (Product_ID)
        REFERENCES dbo.Products(Product_ID)
);