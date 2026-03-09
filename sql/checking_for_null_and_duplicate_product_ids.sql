-- Any NULL Product_IDs?
SELECT COUNT(*) AS NullProductIDs
FROM dbo.[Sample - Superstore -transformed]
WHERE Product_ID IS NULL;

-- Any duplicate Product_IDs in source?
SELECT Product_ID, COUNT(*) AS Cnt
FROM dbo.[Sample - Superstore -transformed]
WHERE Product_ID IS NOT NULL
GROUP BY Product_ID
HAVING COUNT(*) > 1
ORDER BY Cnt DESC;