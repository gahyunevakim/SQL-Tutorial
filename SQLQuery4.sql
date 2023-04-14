--SELECT *
--FROM SQLTutorial..EmployeeDemographics

--SELECT *
--FROM SQLTutorial..EmployeeSalary

SELECT FirstName, LastName, Gender, Salary
, Count(Gender) OVER(PARTITION BY Gender) as TotalGender
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID