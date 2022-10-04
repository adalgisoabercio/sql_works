---------------------------------------- GROUP/ORDER BY STATEMENT START ---------------------------------------------
/*
	GROUP BY, ORDER BY
*/

SELECT ED.Gender, COUNT(ED.Gender) AS total_gender
FROM SQL_Beginner.dbo.EmployeeDemographics ED
WHERE ED.Age > 32
GROUP BY ED.Gender  
ORDER BY ED.Gender DESC --> or ASC

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics ED
ORDER BY ED.Age DESC, ED.Gender DESC

SELECT *
FROM SQL_Beginner.dbo.EmployeeDemographics
ORDER BY 4 DESC, 5 DESC

SELECT Gender, Age, COUNT(Gender) AS total_gender
FROM SQL_Beginner.dbo.EmployeeDemographics
GROUP BY Gender, Age

---------------------------------------- GROUP/ORDER BY STATEMENT END ---------------------------------------------
