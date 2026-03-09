SELECT
    o.Order_ID,
    c.Customer_Name,
    oi.Product_ID,
    oi.Quantity,
    oi.Sales
FROM dbo.Orders o
JOIN dbo.Customers c
    ON o.Customer_ID = c.Customer_ID
JOIN dbo.Order_Items oi
    ON o.Order_ID = oi.Order_ID;