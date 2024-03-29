--1. How many actors are there with the last name ‘Wahlberg’?
select last_name, first_name from actor
where last_name like 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
select amount, payment_id from payment
where amount >= 3.99 and amount <= 5.99;

select * from payment
where amount <= -3.99 and amount >= -5.99

--3. What film does the store have the most of? (search in inventory)
select film_id,count(film_id) from inventory
group by film_id

--4. How many customers have the last name ‘William’?
select * from customer
where last_name like 'W%'
--no Williams; the table only has 5 customers total; I also checked other "customer" tables with nothing found

select * from rental


--5. What store employee (get the id) sold the most rentals?
select staff_id,count(staff_id) from rental
group by staff_id
order by count desc

--6. How many different district names are there? 
select count(distinct district) from address


--7. What film has the most actors in it? (use film_actor table and get film_id)
select * from film_actor

select film_id,count(actor_id) from film_actor
group by film_id
order by count desc


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
select count(customer_id) from customer
where store_id = 1 and last_name like '%es'

select * from customer

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
select * from payment

select amount, count(amount) from payment
where customer_id between 380 and 430
group by amount
order by count desc

--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
select * from film

select rating, count(film_id) from film
group by rating

