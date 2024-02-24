create database feb24;

use feb24;

create table student(Id int, Name varchar(55), Age int);

select * from student;

insert into student values(1, "Tom", 14);
insert into student values(1, "Tom", 14);
insert into student values(1, "Tom", 14);

Alter table student Add Primary Key (Id);

create table employe(Id int primary key, Name varchar(55), Age int);
insert into employe values(1, "Tom", 14);

select * from employe;
