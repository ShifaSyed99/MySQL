create database eg;

use eg;

create table employee(EId int primary key, EName varchar(55), DeptName varchar(55),Age int, Gender varchar(55), Salary int);

insert into employee values(1, "Elsa", "HR", 25, "Female", 25000);
insert into employee values(2, "Anna", "IT",  26, "Female", 55000);
insert into employee values(3, "Olaf", "Support", 27, "Male", 45000);
insert into employee values(4, "Tom", "IT", 45, "Male", 50000);
insert into employee values(5, "Ellie", "HR", 36, "Female", 25000);
insert into employee values(6, "Jerry", "Support", 45, "Male", 40000);

select * from employee;

select count(*) Total_Employee from employee;

select DeptName, count(*) As Total_Employee from employee group by DeptName ;

select sum(Salary) as Total_Salary from employee;

select min(Salary) as Min_Salary from employee;

select max(Salary) as Max_Salary from employee;

select avg(Salary) as Avg_Salary from employee;

select DeptName, count(*) as Tatal_Employee from employee group by DeptName; 

select EName from employee order by EName asc;

select EName from employee order by EName desc;

select * from employee order by EName asc, DeptName desc;

select * from employee where DeptName = 'Support' order by EName asc;