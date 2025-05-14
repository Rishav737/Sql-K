use sakila;
show databases;
use sakila;
show tables;
select*from actor;
select actor_id,actor_id*10 ,last_name from actor;
select * from actor where actor_id=2;
select *from actor where first_name='ED';
select *from actor where first_name='ED' or actor_id>100;
select *from actor where actor_id>10 and actor_id<25;
-- comment betwwn operator between lower and higher
select * from actor where actor_id between 11 and 24;
select *from actor where actor_id in(2,5);
-- select statement
-- sql case-insensitative
-- sql multi -line query
-- and or operator
-- between and insert
-- like =>pattern per kaam karega
select *from actor where first_name='NICK';
-- like  %[zero  or more character] [only 1 character]
select* from actor where first_name like "S%t";
select *from actor where first_name like 'ED';
select *from actor where first_name like 'E_';
select *from actor where first_name like '__';
select *from actor where first_name like '_A%';



select *from actor where actor_id in (3,5,7);
select *from actor where actor_id<=7 and actor_id>=3;
select first_name from actor where actor_id not between 3 and 100;
select first_name from actor where first_name like '_E%R';
select first_name from actor where first_name like '%NN%';
select first_name, last_name from actor where last_name like '__s%';
select first_name from actor where first_name like '_____';
select first_name from actor where first_name like '_A%T%H__';



