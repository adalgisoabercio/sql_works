/*
	UNION, UNION ALL
*/

-- SELECT *
-- FROM SQL_Beginner.dbo.EmployeeDemographics

-- The UNION operator is used to combine the result-set of two or more SELECT statements.
-- Every SELECT statement within UNION must have the same number of columns
-- The columns must also have similar data types 
-- The columns in every SELECT statement must also be in the same order
-- Identical Tables

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
UNION
SELECT *
FROM SQL_Beginner.dbo.WareHouseEmployeeDemographics

-- it'll overriding the EmployeeDemogrpahics because the same of data types
-- SELECT EmployeeID, FirstName, Age --(EmployeeID int, FirstName varchar, Age int)
-- FROM SQL_Beginner.dbo.EmployeeDemographics
-- UNION
-- SELECT EmployeeID, jobTitle, Salary --(EmployeeID int, jobTitle varchar, Salary int)
-- FROM SQL_Beginner.dbo.EmployeeSalary
-- ORDER BY EmployeeID

-- SELECT *
-- FROM SQL_Beginner.dbo.EmployeeDemographics ED
-- FULL OUTER JOIN SQL_Beginner.dbo.WareHouseEmployeeDemographics WHD
--     ON ED.EmployeeID = WHD.EmployeeID