#create database dbanme
create database demo;

#use the db created
use demo;

#create table tablename(values type,........);
create table student(id int, name varchar(50), age int);
select * from student;

#nsert values
insert into student values(1 , "Tom", 15);
insert into student values(2 , "Jerry", 14);
insert into student values(3 , "Spike", 15);
insert into student values(4 , "Ben", 14);
insert into student values(5 , "Bugs", 15);

create table employee(ID int, Name varchar(50),Address varchar(50), Designation varchar(50));
select * from employee;

#nsert values
insert into employee values(1 , "Tom", "Mumbai", "Manager");
insert into employee values(2 , "Jerry", "Navi Mumbai", "Developer");
insert into employee values(3 , "Spike", "Bandra", "Associate");
insert into employee values(4 , "Ben", "Delhi", "HR");
insert into employee values(5 , "Bugs", "Bangalore", "Tech Support");

select * from employee where ID = 2;
select name from employee where ID = 2;


