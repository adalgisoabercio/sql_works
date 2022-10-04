---------------------------------------------- WHERE STATEMENT START --------------------------------------------------
/*
	WHERE STATEMENT
	=, <>, <, >, AND, OR, LIKE, NULL, NOT NULL, IN
*/

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE FirstName = 'SAMUEL PANDOHAN'										--> EQUAL TO

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE FirstName <> 'yusuf'												--> Not Equal To

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE Age < 30															--> Less than

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE Age > 35															--> More than

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE Age <= 33															--> Less Than Equal

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE Age >= 35															--> More Than Equal

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE Age >= 35 AND Gender = 'Male'										--> More Than Equal 35 and Male

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE FirstName LIKE 'S%'												--> The FirstName start with S

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE FirstName LIKE '%S%'												--> Any of FirstName that S is included

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE LastName LIKE 'T%M%'												--> The name that included T in front, M in somewhere

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE FirstName is NOT NULL												--> if first name that are available

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE LastName is NULL													--> If last name are not available

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
WHERE FirstName IN ('SAMUEL', 'roni')									--> basically like = (Equal to) statement but in multiple conditions


---------------------------------------------- WHERE STATEMENT END --------------------------------------------------