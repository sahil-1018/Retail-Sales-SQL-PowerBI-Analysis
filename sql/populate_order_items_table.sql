INSERT INTO dbo.Order_Items
(
    Row_ID, Order_ID, Product_ID,
    Sales, Quantity, Discount, Profit
)
SELECT
    Row_ID,
    LTRIM(RTRIM(Order_ID))   AS Order_ID,
    LTRIM(RTRIM(Product_ID)) AS Product_ID,
    Sales,
    Quantity,
    Discount,
    Profit
FROM dbo.[Sample - Superstore -transformed]
WHERE Row_ID IS NOT NULL;