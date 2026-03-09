SELECT
    YEAR(o.Order_Date) AS Order_Year,
    MONTH(o.Order_Date) AS Order_Month,
    SUM(oi.Sales) AS Total_Sales
FROM dbo.Order_Items oi
JOIN dbo.Orders o
    ON oi.Order_ID = o.Order_ID
GROUP BY
    YEAR(o.Order_Date),
    MONTH(o.Order_Date)
ORDER BY
    Order_Year,
    Order_Month;