
-- employee Database

create database employee;

use employee;

-- Departments Table

create table Departments
(
department_id int primary key,
department_name varchar(100)
);

-- Location Table

create table location
(
location_id int primary key,
location varchar(30)
);

-- Employees Table

create table employees
(
employee_id int primary key,
employee_name varchar(50),
gender enum('M','F'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
constraint fk_department foreign key (department_id) references departments(department_id),
constraint	fk_location foreign key (location_id) references location(location_id)
);

-- Table Alteration

alter table employees
add email varchar(100);

alter table employees
modify designation varchar(200);

alter table employees
drop column age;

alter table employees
rename column hire_date to date_of_joining;

-- Table Renaming

Rename table departments to departments_info;

rename table location to locations;

-- Table Truncate

Truncate table employees;

-- Table & Database Drop

drop table employees;

drop database employee;

-- Database Recreation

drop database if exists employee;

create database Employee;

use employee;

create table Departments
(
department_id int primary key,
department_name varchar(100)
);

create table location
(
location_id int primary key,
location varchar(30)
);

create table employees
(
employee_id int primary key,
employee_name varchar(50),
gender enum('M','F'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
constraint fk_department foreign key (department_id) references departments(department_id),
constraint	fk_location foreign key (location_id) references location(location_id)
);

-- Departments Table

alter table departments
modify department_name varchar(100) not null;

alter table departments
add unique(department_name);

-- Location Table

show create table employees;

alter table employees
drop foreign key fk_location;

alter table location
modify location_id int auto_increment;

alter table employees
add constraint	fk_location foreign key (location_id) references location(location_id);

alter table location
modify location varchar(30) not null;

alter table location
add unique(location);

-- Employees Table

alter table employees
modify employee_name varchar(50) not null;

alter table employees
add constraint chk_age check(age >=18);

alter table employees
modify hire_date date default (current_date);