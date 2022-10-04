
---------------------------------------------- SELECT STATEMENT START --------------------------------------------------
/*
	SELECT STATEMENT
	*, TOP, DISTICT, COUNT, AS, MAX, MIN, AVG
*/

SELECT *																				--> Retrieve all data in table
FROM SQL_Beginner.dbo.EmployeeDemographics


SELECT FirstName, LastName																--> Retrieve all first and last name in table
FROM SQL_Beginner.dbo.EmployeeDemographics

SELECT TOP 5 *																			--> retrieve first 5 datas in table
FROM SQL_Beginner.dbo.EmployeeDemographics

SELECT DISTINCT(EmployeeID)																--> retrieve the unique value of employee id
FROM SQL_Beginner.dbo.EmployeeDemographics

SELECT DISTINCT(jobTitle)
FROM SQL_Beginner.dbo.EmployeeSalary

SELECT COUNT(LastName) AS LastNameCount
FROM SQL_Beginner.dbo.EmployeeDemographics

SELECT MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary, AVG(Salary) AS AVGSalary
FROM SQL_Beginner.dbo.EmployeeSalary

-- If change the available database to master/not current table, you should do this to get same result
SELECT MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary, AVG(Salary) AS AVGSalary
FROM SQL_Beginner.dbo.EmployeeSalary

-- or in current available database
SELECT MAX(Salary) as MaxSalary, MIN(Salary) AS MinSalary, AVG(Salary) AS AVGSalary
FROM SQL_Beginner.dbo.EmployeeSalary

---------------------------------------------- SELECT STATEMENT END --------------------------------------------------