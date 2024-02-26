create database joins;

use joins;

create table product(PId int primary key ,PName varchar(55), Price int, Quantity int);# CAddress varchar(250));

insert into product values(1, "Speakers", 1000, 2);
insert into product values(2, "TV", 55000, 1);
insert into product values(3, "Mobile", 20000, 3);
insert into product values(4, "Kurta", 500, 5);
insert into product values(5, "Laptop", 45000, 2);

select * from product;

create table orders(OId int primary key, ODate date , PId int);

insert into orders values(18, "2024-01-16", 2);
insert into orders values(17, "2024-01-16", 1);
insert into orders values(19, "2024-01-16", 2);
insert into orders values(20, "2024-01-16", 3);

truncate table orders;

select * from orders;

#inner join
select Pname, Price, Quantity, ODate from product
inner join orders
on product.PId = orders.PId; 

#left outer join
select Pname, Price, Quantity, ODate from product
left outer join orders
on product.PId = orders.PId; 

#right outer join
select Pname, Price, Quantity, ODate from product
right outer join orders
on product.PId = orders.PId; 

#FULL OUTER JOIN
#left outer join
select Pname, Price, Quantity, ODate from product
left outer join orders
on product.PId = orders.PId
union							#keyword full outer join
#right outer join
select Pname, Price, Quantity, ODate from product
right outer join orders
on product.PId = orders.PId; 

