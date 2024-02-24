create database Marks;

use Marks;

create table grades(RollNo int primary key, Name varchar(55), Age int, Marks int, Gender varchar(55));

insert into grades values(1, "Elsa", 15, 55, "Female");
insert into grades values(2, "Anna", 16, 45, "Female");
insert into grades values(3, "Olaf", 17, 85, "Male");
insert into grades values(4, "Tom", 15, 65, "Male");
insert into grades values(5, "Ellie", 16, 95, "Female");
insert into grades values(6, "Jerry", 15, 65, "Male");

select * from grades;

select min(Marks) from grades;
select max(Marks) from grades;
select sum(Marks) from grades;
select avg(Marks) from grades;

select count(*) from grades;
select count(*) from grades where Age = 15;