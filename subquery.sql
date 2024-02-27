create database AutoInc;

use AutoInc;

create table employee(EId int primary key auto_increment, EName varchar(255), Salary numeric);

truncate table employee;

insert into employee values(1001, "John", 55000);
insert into employee(EName, Salary)  values( "Elise", 45000);
insert into employee(EName, Salary) values( "Anne", 35000);
insert into employee(EName, Salary) values("Ray", 65000);
insert into employee(EName, Salary) values("Ajay", 50000);

select * from employee;

select max(Salary) from employee;

select min(Salary) from employee;

#2nd Highest salary

select max(Salary) as EmpSalary from employee
where Salary <>(select max(Salary) from employee);

select max(Salary) as EmpSalary from employee
where Salary <(select max(Salary) from employee);