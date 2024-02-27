create database management;

use management;

create table employee(Id int primary key, Name varchar(255), Age int);

insert into employee values(101, "Sam", 23);
insert into employee values(102, "Sameer", 33);
insert into employee values(103, "Samantha", 20);
insert into employee values(104, "Samara", 26);
insert into employee values(105, "Sammy", 50);

select * from employee;