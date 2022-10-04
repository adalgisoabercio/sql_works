CREATE DATABASE Indonesia_election;
USE Indonesia_election;

CREATE TABLE Party(No int NOT NULL, Party_Name varchar(10), Head varchar(30), Address varchar(20), Declared_year int, of_general_election_participated int, PRIMARY KEY(No));
INSERT INTO Party VALUES (1, "NASDEM", "Surya Paloh", "Menteng", 2011, 1)
INSERT INTO Party VALUES (2, "PKB", "Muhaimin Iskandar", "Raden Saleh", 1998, 4)
INSERT INTO Party VALUES (3, "PKS", "Anis Matta", "RB Simatupang", 1998, 4)
INSERT INTO Party VALUES (4, "PDIP", "Megawati", "Kebagusan", 1970, 10)
INSERT INTO Party VALUES (5, "GOLKAR", "Abu Rizal Bakrie", "Slipi", 1967, 10)

CREATE TABLE General_Election_Result (Party_Name varchar(10), year int, Seat int, Rank int, Chairman varchar(5), Chairman_of_Fraksi varchar(20));
INSERT INTO General_Election_Result VALUES ("NASDEM", 2014, 35, 9, NULL, NULL)
INSERT INTO General_Election_Result VALUES ("NASDEM", 2009, NULL, NULL, NULL, NULL );
INSERT INTO General_Election_Result VALUES ("PKB", 2014, 47, 6, NULL, NULL);
INSERT INTO General_Election_Result VALUES ("PKB", 2009, 27, 7, "TIDAK", "Marwan D");
INSERT INTO General_Election_Result VALUES ("PKS", 2014, 40, 7, NULL, NULL);
INSERT INTO General_Election_Result VALUES ("PKS", 2009, 57, 4, "YA", "Hidayat NW");
INSERT INTO General_Election_Result VALUES ("PDIP", 2014, 109, 1, NULL, NULL);
INSERT INTO General_Election_Result VALUES ("PDIP", 2009, 95, 3, "YA", "Puan M");
INSERT INTO General_Election_Result VALUES ("GOLKAR", 2014, 91, 2, NULL, NULL);
INSERT INTO General_Election_Winner VALUES ("GOLKAR", 2009, 107, 2, "YA", "Priyo BS")

create table General_Election_Winner (year int, The_Winner varchar(10));
INSERT INTO General_Election_Winner (2014, "PDIP");
INSERT INTO General_Election_Winner (2009, NULL);
INSERT INTO General_Election_Winner (2004, "GOLKAR");
INSERT INTO General_Election_Winner (1999, "PDIP");
INSERT INTO General_Election_Winner (1997, "GOLKAR");
INSERT INTO General_Election_Winner (1992, "GOLKAR");

-- Problem #1
-- 1.	Create a list of name parties, declared year, for all parties who participated in more or equals 5 times
SELECT Party_Name, Declared_year 
FROM Party 
WHERE of_general_election_participated >= 5;

-- Problem #2
-- 2.	Update the name of Chairman of Fraksi of Golkar party from ‘Priyo BS.’ Into ‘Setya N.
UPDATE General_Election_Result 
SET Chairman_of_Fraksi = "Setya N" 
WHERE Party_Name = "Golkar" AND year = 2009;

-- Problem #3
-- 3.	Create a list of Parties’ Chairman whre Chairman of Fraksi is not NULL 
SELECT Chairman 
FROM General_Election_Result 
WHERE Chairman_of_Fraksi != NULL;

-- Problem #4
-- 4.	Create a list the name of parties and their average rank, sort them ascendingly
SELECT Party_Name, Rank 
FROM General_Election_Result 
ORDER BY rank ASC;

-- Problem #5
-- 
