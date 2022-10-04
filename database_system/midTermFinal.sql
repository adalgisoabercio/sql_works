--The Databases Created
create database MIDTERM;
use MIDTERM;

--Create Table for Member
create table member(id int NOT NULL, name varchar(40), age int, gender varchar(6), address varchar(30), member_since int, PRIMARY KEY(id));
insert into member values(1, "Andre", 23, "Male", "Cikarang", 2010);
insert into member values(2, "Andriana", 21, "Female", "Jakarta", 2020);
insert into member values(3, "Tedy", 25, "Male", "Cikarang", 2020);
insert into member values(4, "Anwar", 19, "Male", "Bandung", 2013);
insert into member values(5, "Jeni", 27, "Female", "Jakarta", 2020);

--Create Table for Benefit
create table benefit(id int NOT NULL, Product_of_Benefit varchar(30), Type_of_Benefit varchar(20), How_Long int, PRIMARY KEY(id));
insert into benefit values(1, "Membership", "DISCOUNT", 2);
insert into benefit values(2, "Sports Stadium", "DISCOUNT", 5);
insert into benefit values(3, "Parking Voucher", "FREE", 1);
insert into benefit values(4, "Game Tickets", "BIG DISCOUNT", 5);

--Create Table for Usage of Benefit
create table usage_of_benefit(id int NOT NULL, year int, id_member int, id_product_of_benefit int, status varchar(30), PRIMARY KEY(id), FOREIGN KEY (id_member) REFERENCES member(id), FOREIGN KEY (id_product_of_benefit) REFERENCES member(id));
insert into usage_of_benefit values(1, 2014, 1, 2, "EXPIRED");
insert into usage_of_benefit values(2, 2020, 2, 1, "VALID");
insert into usage_of_benefit values(3, 2020, 2, 2, "VALID");
insert into usage_of_benefit values(4, 2021, 3, 3, "VALID");
insert into usage_of_benefit values(5, 2020, 3, 4, "VALID");

-- member Table Update
alter table member add study_program_id int;

update study_program_id = 20 where id = 1;
update study_program_id = 23 where id = 2;
update study_program_id = 25 where id = 3;
update study_program_id = 32 where id = 4;
update study_program_id = 22 where id = 5;
update study_program_id = 24 where id = 6;

-- Number 2 part A
SELECT * FROM member 
WHERE id > 1 
ORDER BY name DESC;

--Number 2 part B
SELECT m.name, m.age, m.member_since, u.year, u.status 
FROM member m 
INNER JOIN usage_of_benefit u 
ON m.id=u.id 
WHERE year != 2014;

--Number 2 part C
SELECT name, age, gender 
FROM member 
WHERE id > 1 
ORDER BY name DESC;

---Number 2 part D
SELECT m.name, u.year, u.status 
FROM member m 
LEFT JOIN usage_of_benefit u 
ON m.id=u.id_member 
ORDER BY year DESC;

-- Number 2 part E
SELECT m.name, b.Product_of_Benefit, b.Type_of_Benefit, u.year, u.status 
WHERE m.id=u.id_product_of_benefit AND m.id=b.id AND year != 2014;

-- Number 2 part F
SELECT b.id, b.Product_of_Benefit, b.Type_of_Benefit, b.How_Long, u.id, u.year, u.id_member, u.id_product_of_benefit, u.status 
FROM benefit b 
LEFT JOIN usage_of_benefit u 
ON b.id=u.id_product_of_benefit 
ORDER BY Product_of_Benefit ASC;


