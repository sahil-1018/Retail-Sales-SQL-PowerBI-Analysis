SELECT TOP 10
    p.Product_Name,
    SUM(oi.Sales) AS Total_Sales
FROM dbo.Order_Items oi
JOIN dbo.Products p
    ON oi.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Sales DESC;