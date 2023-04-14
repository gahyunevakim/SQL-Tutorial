--WITH CTE_Employee as 
--(SELECT FirstName, LastName, Gender, Salary
--, COUNT(gender) OVER (PARTITION by Gender) as TotalGender
--, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
--FROM SQLTutorial..EmployeeDemographics emp
--JOIN SQLTutorial..EmployeeSalary sal
--	ON emp.EmployeeID = sal.EmployeeID
--WHERE Salary > '45000'
--)
--SELECT FirstName, AvgSalary
--FROM CTE_Employee

--CREATE TABLE #temp_Employee (
--EmployeeID int,
--JobTitle varchar(100),
--Salary int
--)

--Select *
--FROM #temp_Employee

--INSERT INTO #temp_Employee VALUES (
--'1001', 'HR', '45000'
--)

--INSERT INTO #temp_Employee
--SELECT *
--FROM SQLTutorial..EmployeeSalary

DROP TABLE IF EXISTS #Temp_Emloyee2
CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTITLE, Count(JobTitle), Avg(Age), AVG(salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

SELECT *
FROM #Temp_Employee2
