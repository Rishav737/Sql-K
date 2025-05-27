show databases;show databases;

use sakila;
select *from actor;
select *from actor where actor_id=50;
select *from actor where actor_id=50;
select actor_id, actor_id*10,last_name from actor;
select *from actor where first_name='NICK';
select *from actor where first_name='NICK' and actor_id>100;
select * from actor where first_name='ED' or actor_id>100; 
select*from actor where actor_id between 11 and  24 ;
select actor_id,first_name from actor where actor_id=5;
select*from actor where actor_id in (2,5);
select*from actor where actor_id in (2,5,7000000);
select*from actor where actor_id in(3,5,7);
select*from actor where actor_id between 3 and 7;
select  actor_id first_name from actor where actor_id not between 3 and 100;
select *from actor where first_name like '_E%R';
select *from actor where first_name like '%NN%';
select first_name,  ('    hey   ') from actor;
select first_name, trim('     hey    ') from actor;


use sakila;
select*from actor;
select first_name,count(actor_id) from actor group by first_name;
select first_name,count(actor_id) from actor group by first_name order by count(actor_id) desc limit 5;


-- datatype in sql
-- Datatype
-- Number(int,float,double)
-- character (char,varchar,string)
-- date, timestamp
-- create statement

create table test(  id int );
insert into test values(10);
select*from test;

-- 1byte => 8bit 2^8 =>256
create table test2(id tinyint);
insert into test2 values(10);
select *from test2;

-- unsigned
create table test2(id tinyint);
insert into test values(10);
select *from test;

create table test3(id tinyint unsigned);
insert into test3 values(10);
select *from test3;


-- float and decimal
create table test4(id decimal(5,2));
insert into test4 values(845);
insert into test4 values(845.74125);
insert into test4 values(8454.7);  -- will give error
select *from test4;

create table test5(fname char(5) );  -- varchar - variable character
insert into test5 values('hello');
insert into test5 values('sdfghjk');
select *from test5;

create table test6(fname varchar(5) );  -- varchar - variable character
insert into test6 values('hello');
insert into test6 values('hey   ');
insert into test6 values('sdfghjk');
select fname, char_length(fname) from test6;

-- date and timestamp
create table test7(dob date );  
insert into test7 values('2023-12-01'); -- right yyyy-MM-DD
insert into test7 values('01-01-2025'); # error (incorrect format)
select*from test7;

create table test8(dob timestamp );  
insert into test8 values('2023-12-01 10:15:59'); -- right yyyy-MM-DD
insert into test8 values(now() ); # error (incorrect format)
select*from test8;

-- blob ?
-- image ko store kiase krenge database main -learning assignment

-- subquery
-- query with a query

select payment_id ,amount  from payment;
select *from payment where payment_id=10;

select*from payment where amount=5.99;

select * from payment where amount=( select amount from payment where payment_id=10);

select staff_id from payment where rental_id=1422;
select payment_id, staff_id,amount from payment
where staff_id=(select staff_id from payment where rental_id=1422);

use sakila;
select *from payment;
select *from payment where payment_id=6;
select *from payment where amount=4.99;

select*from payment
       where amount=(select amount from payment where payment_id=6);
       
       use sakila;
       select *from actor;
       select*from actor where actor_id>
       (select actor_id from actor where first_name='ED' and last_name='chase');
       
       select*from payment;
       
      -- get the all the payment detail for those payment where the payment month should be =to the payment month for payment id=5
      select*from payment where month(payment_date)=(select month(payment_date) from payment where payment_id=5);


select *from payment;

-- get the customer_id the payment_id and the amount for the payment where the rental id is less than the rental id of payment id=7 amount less than 5
select * from payment where payment_id=7 and amount<=5;

select *from payment where 
rental_id<(select rental_id from  payment where payment_id=7 and amount<=5);


-- get the amount at the total number payment done where the total number of payment is> the total number of payment  done by 5.99
select *from payment;


# 1 single row subquery
select rental_id from payment where payment_id =7 and amount<5;



-- multirow subquery

-- in(2.99,5.99)
select *from payment
where amount =any (select amount from payment where payment_id in (3,1));

-- any ==S

-- ==> gretaer than sbse choti value subquery 
select *from payment
where amount >any (select amount from payment where payment_id in (3,1));

select *from payment
where amount <any (select amount from payment where payment_id in (3,1));

--  >all--> sabse bda
select *from payment
where amount >=all (select amount from payment where payment_id in (3,1));

