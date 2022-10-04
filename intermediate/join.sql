/*
	INNER JOINS, FULL/LEFT/RIGHT OUTER JOINS
*/

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics -->If available database set to master or the table itself

SELECT *
FROM SQL_Beginner.dbo.EmployeeSalary -->If available database set to master or the table itself

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics ED
INNER JOIN SQL_Beginner.dbo.EmployeeSalary ES --> duplicate will be appeared
	ON ED.EmployeeID = ES.EmployeeID --> all will be retrieve if same employeeID

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics ED
FULL OUTER JOIN SQL_Beginner.dbo.EmployeeSalary ES --> If there is no join, will retrieve NULL value, vice versa
	ON ED.EmployeeID = ES.EmployeeID --> all will be retrieve if same employeeID

--> all will be retrieve if same employeeID based on left table (ED)
SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics ED
LEFT OUTER JOIN SQL_Beginner.dbo.EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID 

--> all will be retrieve if same employeeID based on right table (ES)
SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics ED
RIGHT OUTER JOIN SQL_Beginner.dbo.EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID  

SELECT ED.EmployeeID, ED.FirstName, ED.LastName, ES.jobTitle, ES.Salary
FROM SQL_Beginner.dbo.EmployeeDemographics ED
INNER JOIN SQL_Beginner.dbo.EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID

--> EmployeeID based on EmployeeDemographics table
SELECT ED.EmployeeID, ED.FirstName, ED.LastName, ES.jobTitle, ES.Salary 
FROM SQL_Beginner.dbo.EmployeeDemographics ED
RIGHT OUTER JOIN SQL_Beginner.dbo.EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID

-- EmployeeID based on EmployeeDemographics table
SELECT ED.EmployeeID, ED.FirstName, ED.LastName, ES.jobTitle, ES.Salary
FROM SQL_Beginner.dbo.EmployeeDemographics ED
LEFT OUTER JOIN SQL_Beginner.dbo.EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID

--> EmployeeID based on EmployeeSalary table
SELECT ES.EmployeeID, ED.FirstName, ED.LastName, ES.jobTitle, ES.Salary
FROM SQL_Beginner.dbo.EmployeeDemographics ED
RIGHT OUTER JOIN SQL_Beginner.dbo.EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID

--> EmployeeID based on EmployeeSalary table
SELECT ES.EmployeeID, ED.FirstName, ED.LastName, ES.jobTitle, ES.Salary 
FROM SQL_Beginner.dbo.EmployeeDemographics ED
LEFT OUTER JOIN SQL_Beginner.dbo.EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID

-- get the information of salary without SAUMUEL PANDOHAN from highest to lowest
SELECT ED.EmployeeID, ED.FirstName, ED.LastName, ES.Salary
FROM SQL_Beginner.dbo.EmployeeDemographics ED
INNER JOIN SQL_Beginner.dbo.EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID
WHERE ED.FirstName <> 'SAMUEL PANDOHAN'
ORDER BY ES.Salary DESC

SELECT ES.jobTitle, AVG(ES.Salary) as AvgSalary --> Dont call the column twice
FROM SQL_Beginner.dbo.EmployeeDemographics ED
FULL OUTER JOIN SQL_Beginner.dbo.EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID
WHERE ES.jobTitle = 'Data Analytics'
GROUP BY ES.jobTitle

-- Retrieve all from related tables based on EmployeeID from second table
SELECT ED.EmployeeID, ED.FirstName, ED.LastName, ED.Age, ED.Gender, ES.jobTitle, ES.Salary
FROM SQL_Beginner.dbo.EmployeeSalary ES
LEFT JOIN SQL_Beginner.dbo.EmployeeDemographics ED
	ON ES.EmployeeID = ED.EmployeeID
WHERE ED.Age <= 35 AND ED.Gender = 'Male'
ORDER BY ED.FirstName DESC -- or ASC