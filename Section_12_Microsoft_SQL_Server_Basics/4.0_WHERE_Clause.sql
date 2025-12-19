SELECT * FROM [dbo].[EmployeeRecords]
WHERE EmployeeID = 2

SELECT EmployeeID,FirstName FROM [dbo].[EmployeeRecords]
WHERE EmployeeID = 2

SELECT * FROM dbo.EmployeeRecords WHERE Salary>=75000.00

SELECT FirstName,LastName,Department,Salary 
FROM dbo.EmployeeRecords WHERE Salary<75000.00

SELECT distinct FirstName,LastName,Department,Salary
FROM dbo.EmployeeRecords WHERE Salary<75000.00