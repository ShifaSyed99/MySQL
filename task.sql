create database info;

use info;

create table Student(SId int primary key, SName varchar(250), SAge int, SAddr varchar(250), SEmail varchar(250), Contact numeric);

create table Course(CId int primary key,  CName varchar(250), CFees int, Start_Date datetime );
Alter table Course add SId int;

insert into Student values(1, "Elsa", 18, "Mumbai", "Elsa@gmail.com", 5475968456);
insert into Student values(2, "Steve", 17, "Goa", "Steve@yahoo.com", 6582174965);
insert into Student values(3, "Anna", 19, "Mumbai", "Anna@hotmail.com", 7446123548);
insert into Student values(4, "Tony", 20, "Kerala", "Tony@gmail.com", 5698741235);
insert into Student values(5, "Nat", 18, "Mumbao", "Nat@yahoo.com", 4569823175 );
insert into Student values(6, "Sam", 17, "Karnataka", "Sam@hotmail.com", 8974568236);

select * from student;

truncate table course;

insert into Course values(101, "CoreJava", 2000, "2024-01-16 11:12:03", 1);
insert into Course values(102, "AWS", 20000, "2024-01-02 07:15:07", 2);
insert into Course values(103, "CoreJava", 2000, "2024-01-13 11:20:11", 3);
insert into Course values(104, "Data Science", 50000, "2024-01-16 08:59:00", 4);
insert into Course values(105, "Python", 45000, "2024-01-17 13:55:03", 5);
insert into Course values(106, "CoreJava", 2000, "2024-01-16 11:12:03", 6);


select * from course;

update Student set SAddr = 'Mumbai' where SId = 5;
select * from Student;

select SAddr from Student where SAddr like 'M%';

select count(*) from Student As Total_Students;

select CName from Course order by CName desc;

delete from Course where CId = 106;

select * from student as Student_Details ;

select * from student inner join Course on Student.SId = Course.SId group by CName;

select CFees from Course where CFees between 1000 and 3000;



