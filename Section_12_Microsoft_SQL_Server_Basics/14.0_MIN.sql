

SELECT * FROM dbo.Sales

SELECT MIN(quantity) [Minimum Quantity] FROM dbo.Sales

SELECT MIN(saledate) [Minimum Sales Date] FROM dbo.Sales

SELECT MIN(paymentmethod) [Minimum Pay Method] FROM dbo.Sales

--Show minimum totalamount for each storeid
SELECT StoreID, MIN(TotalAmount) as [Minimum Total Amount for each StoreID]
FROM dbo.Sales
GROUP BY StoreID