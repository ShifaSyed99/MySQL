create database flipkart;

use flipkart;

create table product(PId int primary key, PName varchar(55), Price int);

insert into product values(1, "Speakers", 1000);
insert into product values(2, "TV", 55000);
insert into product values(3, "Mobile", 20000);
insert into product values(4, "Kurta", 500);
insert into product values(5, "Laptop", 45000);

select * from product;

select PName, Price from product where Price >= 10000;

select PName, Price from product where Price >= 500 and Price <= 1000;
select PName, Price from product where Price >= 25000 && Price <= 60000;
select PName, Price from product where Price between 10000 and 20000;

select PName from product where PName like 'l%';
select PName from product where PName like '%a';
select PName from product where PName like '%b%';

update product set Price = 700 where PId = 4;
select * from product;

insert into product values(6, "Shoes", 800);
delete from product where PId = 6;
select * from product;