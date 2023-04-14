--CREATE TABLE EmployeeErrors (
--EmployeeID varchar(50)
--, FristName varchar(50)
--, LastName varchar(50)
--)

--Insert into EmployeeErrors Values
--('1001', 'Jimbo', 'Halbert')
--, ('1002', 'Pamela', 'Beasely')
--,('1005', 'Toby', 'Flenderson - Fired')

--Select *
--From EmployeeErrors

--Select EmployeeID, TRIM(EmployeeID) as IDTRIM
--From EmployeeErrors

--Select EmployeeID, LTRIM(EmployeeID) as IDTRIM
--From EmployeeErrors

--Select EmployeeID, RTRIM(EmployeeID) as IDTRIM
--From EmployeeErrors


----Select LastName, REPLACE(LastName, '-Fired',  '') as LastNameFixed
----From EmployeeErrors
----Select EmployeeID, RTRIM(EmployeeID) as IDTRIM
----From EmployeeErrors

----Select SUBSTRING(FirstName, 3,3)
----From EmployeeErrors

----Select err.FristName, SUBSTRING(err.FirstName,1,3), dem.FirstName, SUBSTRING(dem.FirstName,1,3)
----From EmployeeErrors err
----JOIN EmployeeDemographics dem
----	ON SUBSTRING(err.FirstName, 1,3) = SUBSTRING(dem.FirstName, 1,3)

--Select FristName, LOWER(FristName)
--FROM EmployeeErrors


--Select FristName, UPPER(FristName)
--FROM EmployeeErrors

--CREATE PROCEDURE TEST
--AS
--Select *
--From EmployeeDemographics

--EXEC TEST

--CREATE PROCEDURE [dbo].[Temp_Employee]
--@JobTitle nvarchar(100)
--AS
--Create table #temp_employee (
--JobTitle varchar(100),
--EmployeePerJob int,
--AvgAge int,
--AvgSalary int
--)

--Insert into #temp_employee
--SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
--FROM SQLTutorial..EmployeeDemographics emp
--JOIN SQLTutorial..EmployeeSalary sal
--	ON emp.EmployeeID = sal.EmployeeID
--Where JobTitle = @JobTitle
--group by Jobtitle

--Select *
--From #temp_employee

--EXEC Temp_Employee 

Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as AllAvgSalary
From EmployeeSalary

Select EmployeeID, Salary, AVG(Salary) as AllAvgSalary
From EmployeeSalary
Group By EmployeeID, Salary
Order By 1,2

Select *
From (Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
	From EmployeeSalary) a

Select EmployeeID, JobTitle, Salary
From EmployeeSalary
Where EmployeeID in (
		Select EmployeeID
		From EmployeeDemographics
		Where Age > 30)