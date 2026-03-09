SELECT
    o.Region,
    SUM(oi.Sales) AS Total_Sales,
    SUM(oi.Profit) AS Total_Profit
FROM dbo.Order_Items oi
JOIN dbo.Orders o
    ON oi.Order_ID = o.Order_ID
GROUP BY o.Region
ORDER BY Total_Sales DESC;