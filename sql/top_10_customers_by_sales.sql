SELECT TOP 10
    c.Customer_Name,
    SUM(oi.Sales) AS Total_Sales
FROM dbo.Order_Items oi
JOIN dbo.Orders o
    ON oi.Order_ID = o.Order_ID
JOIN dbo.Customers c
    ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_Name
ORDER BY Total_Sales DESC;