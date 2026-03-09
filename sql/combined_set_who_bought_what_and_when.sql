SELECT
    o.Order_ID,
    o.Order_Date,
    c.Customer_Name,
    p.Product_Name,
    p.Category,
    oi.Quantity,
    oi.Sales,
    oi.Profit
FROM dbo.Order_Items oi
JOIN dbo.Orders o
    ON oi.Order_ID = o.Order_ID
JOIN dbo.Customers c
    ON o.Customer_ID = c.Customer_ID
JOIN dbo.Products p
    ON oi.Product_ID = p.Product_ID;