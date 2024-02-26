create database feb26;

use feb26;

create table customer(CId int primary key, CName varchar(55), Contact numeric,City varchar(255));

insert into customer values(1, "Elsa", 5475968456, "Mumbai");
insert into customer values(2, "Steve", 6582174965 , "Goa");
insert into customer values(3, "Anna", 7446123548 , "Mumbai");
insert into customer values(4, "Tony", 5698741235 , "Kerala");
insert into customer values(5, "Nat", 4569823175 , "Mumbai");
insert into customer values(6, "Sam", 8974568236, "Kerala");

select * from customer where City = "Kerala";

select count(CId), City  from customer group by City;

