create database amazon;

use amazon;

create table product(PId int primary key, PName varchar(55), Price int);

insert into product values(1, "Speakers", 1000);
insert into product values(2, "TV", 55000);
insert into product values(3, "Mobile", 20000);
insert into product values(4, "Kurta", 500);
insert into product values(5, "Laptop", 45000);

select * from product;

#delete command
delete from product where PId = 4;
select * from product;

#truncate command
truncate table product;
select * from product;

#drop command
drop table product;
select * from product;