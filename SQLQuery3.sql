--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--Full Outer Join SQLTutorial.dbo.WareHouseEmployeeDemographics
--	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

--CREATE TABLE WareHouseEmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)

--INSERT INTO WareHouseEmployeeDemographics VALUES
--(1001, NULL, NULL, NULL, NULL),
--(1002, NULL, NULL, NULL, NULL),
--(1003, NULL, NULL, NULL, NULL),
--(1004, NULL, NULL, NULL, NULL),
--(1005, NULL, NULL, NULL, NULL),
--(1006, NULL, NULL, NULL, NULL),
--(1007, NULL, NULL, NULL, NULL),
--(1008, NULL, NULL, NULL, NULL),
--(1009, NULL, NULL, NULL, NULL)

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--UNION ALL
--SELECT *
--FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
--ORDER BY EmployeeID

--SELECT EmployeeID, FirstName, Age
--FROM SQLTutorial.dbo.EmployeeDemographics
--UNION
--SELECT EmployeeID, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeSalary
--ORDER BY EmployeeID

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age > 30 THEN 'Old'
--	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--	ELSE 'Baby'
--END
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age

--SELECT FirstName, LastName, JobTitle, Salary,
--CASE
--	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
--	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
--	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
--	ELSE Salary + (Salary * 0.3)
--END
--FROM SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT JobTitle, AVG(Salary)
--FROM SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--HAVING AVG(Salary) > 45000
--ORDER BY AVG(Salary)

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

--UPDATE SQLTutorial.dbo.EmployeeDemographics
--SET Age = 31, Gender = 'Female'
--WHERE EmployeeID = 1012

--DELETE FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE EmployeeID = 1005

--SELECT Avg(Age) AS AvgAge
--FROM [SQLTutorial].[dbo].[EmployeeDemographics]

--SELECT Demo.EmployeeID
--FROM [SQLTutorial].[dbo].[EmployeeDemographics] AS Demo
--JOIN [SQLTutorial].[dbo].[EmployeeSalary] AS Sal
--	ON Demo.EmployeeID = Sal.EmployeeID

SELECT Demo.EmployeeID, Demo.FirstName, Demo.FirstName,
	Sal.JobTitle, Ware.Age
FROM [SQLTutorial].[dbo].EmployeeDemographics Demo
LEFT JOIN [SQLTutorial].[dbo].EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQLTutorial].[dbo].WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID