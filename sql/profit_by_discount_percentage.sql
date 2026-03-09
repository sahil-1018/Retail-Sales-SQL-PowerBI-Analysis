SELECT
    oi.Discount,
    SUM(oi.Sales) AS Total_Sales,
    SUM(oi.Profit) AS Total_Profit
FROM dbo.Order_Items oi
GROUP BY oi.Discount
ORDER BY oi.Discount;