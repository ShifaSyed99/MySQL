create database singletone;

use singletone;

create table employee(uid int primary key, uname varchar(255), upass varchar(255));
drop table employee;
select * from employee;