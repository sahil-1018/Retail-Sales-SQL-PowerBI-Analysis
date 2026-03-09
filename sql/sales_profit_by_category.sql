SELECT
    p.Category,
    SUM(oi.Sales) AS Total_Sales,
    SUM(oi.Profit) AS Total_Profit
FROM dbo.Order_Items oi
JOIN dbo.Products p
    ON oi.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY Total_Profit DESC;