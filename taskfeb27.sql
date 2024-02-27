create database taskfeb27;

use taskfeb27;

create table user(UId int primary key , First_Name varchar(255), Last_Name varchar(255), Email varchar(250), Contact numeric);
drop table user;

create table transaction(TId int primary key , Date_Of_Transaction datetime, Amount int, ID int, constraint user foreign key(Id) references user(UId));

drop table transaction;

insert into user values(1, "Elise", "Joy", "Elsa@gmail.com", 5475968456);
insert into user values(2, "Steve", "Rogers", "Steve@yahoo.com", 6582174965);
insert into user values(3, "Anna", "Jones", "Anna@hotmail.com", 7446123548);
insert into user values(4, "Anne", "Jonas", "Anna@gmail.com", 7446245548);

select * from user;

truncate transaction;
select * from transaction;

insert into transaction values(17, "2024-01-27", 25000, 1);
insert into transaction values(19, "2024-01-26", 20000, 3);
insert into transaction values(20, "2024-01-27", 10000, 2);

update transaction set Amount = 15000 where TId = 20;

delete from user where UId = 4;

select First_Name, Last_Name, Email, Contact, TId, Date_Of_Transaction, Amount from user
inner join transaction
on user.UId = transaction.Id;

#select count(*) from user where Date_Of_Transaction = '%27' user.UId = transaction.Id;

