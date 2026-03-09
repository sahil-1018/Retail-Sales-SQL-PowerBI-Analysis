INSERT INTO dbo.Products (Product_ID, Product_Name, Category, Sub_Category)
SELECT
    Product_ID,
    MAX(Product_Name),
    MAX(Category),
    MAX(Sub_Category)
FROM dbo.[Sample - Superstore -transformed]
GROUP BY Product_ID;