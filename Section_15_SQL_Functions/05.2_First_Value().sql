SELECT *
FROM EmployeeSalaries

SELECT *
,FIRST_VALUE(Salary) over(order by salary asc) [Minimum Salary]
FROM EmployeeSalaries

SELECT *
,FIRST_VALUE(EmployeeName) over(order by salary asc) [Emp with Minimum Salary]
,FIRST_VALUE(Salary) over(order by salary asc) [Minimum Salary]
FROM EmployeeSalaries


SELECT * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary) [First Value]
FROM EmployeeSalaries

SELECT * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary desc) [First Value EID]
,FIRST_VALUE(EmployeeName) over(partition by department order by salary desc) [First Value EName]
FROM EmployeeSalaries