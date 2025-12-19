SELECT * FROM dbo.Sales
WHERE TotalAmount>=161

SELECT * FROM dbo.Sales

SELECT productid, sum(totalamount) [Sum of sales] FROM dbo.Sales
GROUP BY ProductID
HAVING sum(totalamount)<700

SELECT productid,sum(totalamount) [Sum of sales] FROM dbo.Sales
WHERE TotalAmount>=161
GROUP BY productid
HAVING sum(totalamount)>=250
ORDER BY PRODUCTid DESC

SELECT productid,sum(totalamount) [Sum of sales] FROM dbo.Sales
WHERE TotalAmount>=161
GROUP BY productid
HAVING sum(totalamount)>=250
ORDER BY sum(totalamount) asc