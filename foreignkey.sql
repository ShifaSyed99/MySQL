create database shopping;

use shopping;

create table customers(ID int primary key, name varchar(250), Age int, Addre varchar(255), Salary numeric);

insert into customers values(1, "Elsa", 25, "Mumbai", 250000);
insert into customers values(2, "Steve", 40 , "Goa", 55000);
insert into customers values(3, "Anna", 45 , "Pune", 60000);
insert into customers values(4, "Tony", 40 , "Kerala", 23000);
insert into customers values(5, "Tony", 40 , "Hyderabad", 45000);

select * from customers;

create table orders(OId int primary key, ODate date, Amount int, CId int, 
constraint cust foreign key(CId) references customers(ID));

insert into orders values(18, "2024-01-16", 500, 2);
insert into orders values(17, "2024-01-16", 1000, 1);

select * from orders;

select name, Age, Salary, ODate, Amount from customers 
inner join orders
on customers.ID = orders.CId;
