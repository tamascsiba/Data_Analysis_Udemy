SELECT * FROM dbo.Sales

--Total Sales, Avg Sales, Total Quantity, Avg Quantity for each distinct product
SELECT ProductID,
SUM(TotalAmount) [Sum of Sales],
SUM(Quantity) [Total Quantity],
AVG(TotalAmount) [Avg Amount],
AVG(Quantity) [Avg Quantity]
FROM dbo.Sales
GROUP BY ProductID
HAVING SUM(TotalAmount)<700 AND SUM(Quantity) = 21