-- CREATING A DATABASE
create database COUNTRYDETAILS;
USE COUNTRYDETAILS;

-- CREATING  TABLE COUNTRY
create table COUNTRY (
ID int primary key,
Country_name varchar(50) not null,
Population int not null,
Area decimal (10,2)
);

-- CREATING  TABLE PERSONS
create table PERSONS(
ID int primary key,
Fname varchar(50),
Lname varchar(50),
population int not null,
Rating decimal (2,1),
Country_id int,
Country_name varchar(100)
);

-- INSERTING VALUES TO COUNTRY TABLE
insert into Country (ID, Country_name, Population, Area)
values
(101, 'India', 1419316933, 3287263),
(102, 'China', 1407181209, 9596960),
(103, 'USA', 342034432, 9833517),
(104, 'Indonesia', 283587097, 1904569),
(105, 'Nigeria', 242794751, 1267000),
(106, 'Brazil', 221359387, 8515767),
(107, 'Bangladesh', 170183916, 1475345),
(108, 'Russia', 140134279, 17098246),
(109, 'Pakistan', 257047044, 907132),
(110, 'Mexico', 131741347, 1964375);

-- INSERTING VALUES TO PERSONS TABLE
insert into Persons(ID, Fname, Lname, Population, Rating, Country_Id, Country_name)
values
(101, 'Smriti', 'Mandhana', 1419316933, 5, 101, 'India'),
(102, 'Devon', 'Convey', 1407181209, 4, 102, 'China'),
(103, 'Joe', 'Buttler', 342034432, 3, 103, 'USA'),
(104, 'Cristi', 'Lane', 283587097, 5, 104, 'Indonesia'),
(105, 'Niel', 'Jim', 242794751, 4, 105, 'Nigeria'),
(106, 'Jessy', 'Johanson', 221359387, 3, 106, 'Brazil'),
(107, 'Muhamadullah', 'Saiq', 170183916, 5, 107, 'Bangladesh'),
(108, 'Volga', 'Petrova', 140134279, 2, 108, 'Russia'),
(109, 'Babar', 'Azam', 257047044, 5, 109, 'Pakistan'),
(110, 'Maria', 'Martin', 131741347, 4, 110, 'Mexico');

#1. LIST THE DISTINCT COUNTRY NAMES FROM PERSONS TABLE
select distinct Country_name 
from PERSONS;

#2. SELECT FIRST AND LAST NAMES FROM PERSON TABLE WITH ALIASES
select Fname as First_Name , Lname as Last_Name
from PERSONS;

#3. PERSONS WITH RATING GREATER THAN 4.0
select Fname, Lname, Rating
from PERSONS where Rating>4.0;

#4.COUNTRIES WITH POPULATION GREATER THAN 10 LAKHS
select Country_name
from COUNTRY where Population>1000000;

#5. PERSONS FROM 'USA' OR HAVE A RATING GREATER THAN 4.5
select  Fname, Lname, Country_name, Rating
from PERSONS
where Country_name = 'USA' or Rating > 4.5;

#6. PERSONS WHERE COUNTRY NAME IS NULL
select Fname, Lname
from PERSONS
where Country_Name is null;

#7. persons from the countries 'USA','Canada','UK'
select Fname, Lname, Country_Name
from PERSONS
where Country_Name in ('USA','Canada','UK');

#8. PERSONS NOT FROM THE COUNTRIES 'INDIA' AND 'AUSTRALIA'
select Fname, Lname, Country_Name
FROM PERSONS
WHERE Country_Name not in ('INDIA','AUSTRALIA');

#9. COUNTRIES WITH A POPULATION BETWEEN 5 LAKHS TO 20 LAKHS
select Country_name,Population
from COUNTRY
where Population between 500000 and 2000000;

#10. COUNTRIES WHOSE NAMES DO NOT START WITH C 
select Country_name
from COUNTRY
where Country_name not like 'C%';