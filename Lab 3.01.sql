Use sakila;
-- 1. Drop column picture from staff.

ALTER TABLE sakila.staff
DROP COLUMN picture;	

select * from sakila.staff;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
select * from sakila.customer;
select * from sakila.customer where first_name = 'Tammy';
select * from sakila.staff;


Insert into sakila.staff(first_name,last_name, address_id, email, store_id, username, last_update)
select first_name,last_name, address_id, email, store_id = '1', username ='Tammy', last_update
from sakila.customer;

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table.
select * from sakila.rental;
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select * from sakila.film;

-- Activity 2
-- Update columns to include the information in the column in instead "A1, A2, A3"
-- Combine Film, Category, & Film_Category
-- Remove language table
-- Combining actor & film_actor


