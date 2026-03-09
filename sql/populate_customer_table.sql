INSERT INTO dbo.Customers (Customer_ID, Customer_Name, Segment)
SELECT DISTINCT
    Customer_ID,
    Customer_Name,
    Segment
FROM dbo.[Sample - Superstore -transformed]
WHERE Customer_ID IS NOT NULL;