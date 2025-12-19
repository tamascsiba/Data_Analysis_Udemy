

SELECT * FROM dbo.Sales

SELECT SUM(quantity) [Total Quantity] FROM dbo.Sales

SELECT SUM(quantity) [Total Quantity],SUM(totalamount) [Sum of Amount] FROM dbo.Sales

SELECT AVG(quantity) [Average Quantity] FROM dbo.Sales

SELECT AVG(quantity) [Avg Quantity],AVG(totalamount) [Avg Amount] FROM dbo.Sales

SELECT * FROM dbo.Sales

--Sum of Quantity, SUM of totalamount, AVG of quantity, AVG of total amount for each distinct product

SELECT 
ProductID,
SUM(Quantity) as [Total Quantity],
SUM(TotalAmount) as [Sum of Amount],
AVG(Quantity) [Average Quantity Sold],
AVG(TotalAmount) [Average Amount]
FROM dbo.Sales
GROUP BY ProductID

SELECT * FROM dbo.Sales

--Sum of Quantity, SUM of amount, AVG of quantity & AVG of amount for distinct combinations of ProductID & storeid
SELECT
productid,
storeid,
SUM(Quantity) [Total Quantity],
SUM(totalamount) [Sum of Amount],
AVG(quantity) [Avg of Quantity],
AVG(totalamount) [Avg of Amount]
FROM dbo.sales
GROUP BY ProductID,StoreID

SELECT * FROM dbo.Sales

SELECT COUNT(*) [Number of Rows] FROM dbo.Sales

SELECT COUNT(paymentmethod) [No of Records] FROM dbo.Sales

SELECT COUNT(DISTINCT productid) [Distinct Products] FROM dbo.Sales

SELECT PaymentMethod,COUNT(DISTINCT paymentmethod) [Distinct Pay Mode] FROM dbo.Sales
GROUP BY PaymentMethod

SELECT PaymentMethod,COUNT(paymentmethod) [Pay Mode] FROM dbo.Sales
GROUP BY PaymentMethod

SELECT PaymentMethod,COUNT(*) [Pay Mode] FROM dbo.Sales
GROUP BY PaymentMethod