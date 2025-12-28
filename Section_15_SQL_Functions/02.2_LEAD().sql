SELECT *
FROM ProfitData

--To add a new column that shows next month's profit for each product
SELECT *,LEAD(Profit) OVER(PARTITION BY Product ORDER BY monthnumber) [Next Month's Profit]
from ProfitData

--We don't want product column inthe output but we want each month's total profit to be show by monthnumber & monthname,Also a 
--new column should be added to show next month's total profit
SELECT MonthNumber,MonthName,SUM(Profit) [Total Profit],
LEAD(SUM(Profit)) OVER(ORDER BY monthnumber ASC) [Next Month's Total Profit]
FROM ProfitData
GROUP BY MonthNumber,MonthName
ORDER BY MonthNumber

