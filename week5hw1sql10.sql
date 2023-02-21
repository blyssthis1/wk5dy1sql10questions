--Week 5 - Monday Questions

--1. How many actors are there with the last name ‘Wahlberg’?
--Answer: 2
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
--Answer: 5,607
SELECT Count(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99


--3. What film does the store have the most of? (search in inventory)

SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id 
ORDER BY count DESC;

--4. How many customers have the last name ‘William’?
--Answer: William 0, Williams 1.
SELECT COUNT(*)
FROM customer
WHERE last_name = 'William'
ORDER BY count DESC;

--5. What store employee (get the id) sold the most rentals?
--Answer: Staff 1: 8040
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY count DESC;


--6. How many different district names are there?
--Answer: 378

SELECT Count(DISTINCT district)
FROM address
ORDER BY count DESC;
--7. What film has the most actors in it? (use film_actor table and get film_id)
--Answer: 15
SELECT film_id, count(*)
FROM film_actor
GROUP BY film_id
ORDER BY count DESC;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--Answer:
SELECT count(*)
FROM customer
WHERE store_id = '1' AND last_name LIKE '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)


SELECT count(*)
FROM payment
GROUP BY customer_id BETWEEN 380 AND 430
HAVING count(payment_id) > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?


SELECT rating, count(rating) 
FROM film
GROUP BY rating
ORDER BY count DESC;


