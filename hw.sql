create database journey;

use journey;

create table passenger(PId int primary key, Name varchar(55), Gender varchar(55), Source varchar(55), Destination varchar(55));

insert into passenger values(1, "Elsa", "Female", "Mumbai", "Bangalore");
insert into passenger values(2, "Steve", "Male", "Goa", "Ooty");
insert into passenger values(3, "Anna", "Female", "Mumbai", "Bangalore");
insert into passenger values(4, "Tony", "Male", "Kerala", "Delhi");
insert into passenger values(5, "Nat", "Female", "Mumbao", "Ooty");
insert into passenger values(6, "Sam", "Male", "Karnataka", "Chennai");

select Name, Source from passenger where Source like 'K%';

update passenger set Name = 'Tom' where PId = 4;

select * from Passenger where Source = 'Mumbai' and Destination = 'Bangalore';

delete from passenger where PId = 4;

select * from passenger;