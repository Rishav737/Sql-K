use sakila;
select *from actor;
select actor_id,last_name from actor;
select actor_id, first_name from actor;
select actor_id, actor_id*10,last_name from actor;
select *from actor where first_name='ED';
select *from actor where first_name='ED' and actor_id>100;

-- comment between operator between lower and higher
select *from actor where actor_id between 11 and 25;
select actor_id, first_name from actor where actor_id=5;
select*from actor where actor_id in (2,5);

-- like => pattern par kaam karega = like(same)
-- like % [zero or more character]
-- only [only one character]

select * from actor where first_name like "N%";  -- first letter start n% and last letter start %n
-- S%T first and last letter;
-- (E_) E ke alawa kuch nhi ho     -- 2 letter any

select*from actor where first_name not like '%A%';
 -- distinct, count
 select distinct *from actor;
 select distinct (first_name)from actor;
 select count(first_name) from actor;
 
 -- functions (pre define,user define) code reusable
 -- string function
 -- two type function
 -- scaler function or multirow functions
 -- 1 row apply => result for each row
 
 select first_name,lower(first_name)from actor;
 select first_name,lower(first_name),upper(first_name),length(first_name)from actor;
 
 select first_name,substr(first_name,2)from actor;
 select first_name,substr(first_name,3),substr(first_name,2,3)from actor;
 
 # substr (col,index, total_character;
 select first_name,last_name,concat(first_name,'-',last_name) from actor;
  select first_name,last_name,concat(first_name,'-',last_name,'&') from actor;
  
  -- trim() => white space, character (remove)
  select first_name,('   hey  ') from actor;
   select first_name,trim('   hey  ') from actor;
   
   -- lower () upper (),length *,substr()*,trim()*,concat()
   -- lpad(),rpad()
   
   select first_name,rpad(first_name,6,'&')from actor;



