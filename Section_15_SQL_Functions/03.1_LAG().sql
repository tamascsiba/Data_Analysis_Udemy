

SELECT * FROM ProfitData

--To add a new column that shows previous month's profit for each product
SELECT *,
LAG(Profit) OVER(partition by Product ORDER BY MonthNumber) [Lag Function]
FROM ProfitData

--We don't want product column inthe output but we want each month's total profit to be show by monthnumber & monthname,Also a 
--new column should be added to show previous month's total profit
SELECT MonthNumber,MonthName,SUM(Profit) [Total Profit for Month],
LAG(SUM(profit)) OVER(ORDER BY MonthNumber) [Previous Month's Total Profit]
FROM ProfitData
GROUP BY MonthNumber,MonthName
ORDER BY MonthNumber
