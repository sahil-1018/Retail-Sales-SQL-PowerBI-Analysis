INSERT INTO dbo.Orders
(
    Order_ID, Order_Date, Ship_Date, Ship_Mode, Customer_ID,
    Country, State, City, Postal_Code, Region
)
SELECT
    LTRIM(RTRIM(Order_ID))      AS Order_ID,
    MAX(Order_Date)             AS Order_Date,
    MAX(Ship_Date)              AS Ship_Date,
    MAX(Ship_Mode)              AS Ship_Mode,
    MAX(LTRIM(RTRIM(Customer_ID))) AS Customer_ID,
    MAX(Country)                AS Country,
    MAX(State)                  AS State,
    MAX(City)                   AS City,
    MAX(Postal_Code)            AS Postal_Code,
    MAX(Region)                 AS Region
FROM dbo.[Sample - Superstore -transformed]
WHERE Order_ID IS NOT NULL
GROUP BY LTRIM(RTRIM(Order_ID));