create database conn;

use conn;

create table posts(Id int primary key, name varchar(255), Comments varchar(255));

insert into posts values(1, "Instagram", "Hello" ); 
insert into posts values(2, "Twitter", "This is a new day" );
insert into posts values(3, "Facebook", "Hi join the marathon tommorrow" );
insert into posts values(4, "Youtube", "Very good video" );

select * from posts;