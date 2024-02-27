create database dis;

use dis;

create table student(Id int primary key auto_increment, Name varchar(255), City varchar(255));
 
 
 insert into student(Name, City) values("John", "Pune");
 insert into student(Name, City) values("Johnny", "Punjab");
 insert into student(Name, City) values("Johnna", "Mumbai");
 insert into student(Name, City) values("Johannes", "Goa");
 insert into student(Name, City) values("Jonas", "Punjab");
 insert into student(Name, City) values("Jon", "Mumbai");
 
 select * from student;
 
 select count(distinct City) from student;