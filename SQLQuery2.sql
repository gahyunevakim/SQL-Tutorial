--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

--SELECT *
--FROM SQLTutorial.dbo.EmployeeSalary

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--Left Outer Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--Full Outer Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--Inner Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE FirstNAme <> 'Michael'
--ORDER BY Salary DESC

--SELECT JobTitle, AVG(Salary)
--FROM SQLTutorial.dbo.EmployeeDemographics
--Inner Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'Salesman'
--GROUP BY JobTitle