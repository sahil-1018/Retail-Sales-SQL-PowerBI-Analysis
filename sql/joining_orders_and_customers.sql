SELECT
    o.Order_ID,
    o.Order_Date,
    c.Customer_Name
FROM dbo.Orders o
JOIN dbo.Customers c
    ON o.Customer_ID = c.Customer_ID;