-- string functions
-- numbers, date

 -- dual
 select 9*12345 from dual;
select sysdate(), curdate(), curtime(), 
current_timestamp(),now() from dual; 

select now(),adddate(now(), 2) from dual;  
select now(), adddate(now(), interval 2 month) from dual;
select now(), adddate(now(), interval 2 week) from dual;
select datediff(  now(), '2025-06-13 21:56:39' ) from dual;
select last_day(now() ) from dual;
select month(now() ),year(now() ) from dual;
select extract(year from now() )from dual; 
select extract(second from now() ) from dual; 

-- %Y  => access modifier
select now() from dual;
select now() , date_format(now(), 'this year is %Y') from dual;

-- round() , truncate(), pow,floor(), ceil
select 24.325 ,round(24.625),round(24.625,1 )  from dual;
 select round(24.32, -1) from dual;
 select round(364.32, -2) from dual;
 select round (364.32, -2 ),truncate(364.37,1) from dual;
 select mod(11,2),pow(2,3),floor(10.99999),ceil(9.00001) from dual;
 
 use sakila;
 select *from actor;
 # if(condition,true ,false)
# if(condition,true,if(condit,true,false) )
 select first_name,actor_id,
 if(first_name='NICK',actor_id*10,'no value') from actor;
 select first_name,actor_id,
 if(first_name='NICK',"yes",if(first_name="ED", "hello","no")) from actor;
select*from actor;
select first_name, case 
when mod(actor_id,2)=0 then"yes"
when actor_id=5 then "####yes####"
else "NO"
end from actor; 
 