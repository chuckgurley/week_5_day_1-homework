
--Q 1  How many actors are there with the last name ‘Wahlberg’

SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';


--Q 2 How many payments were made between $3.99 and $5.99?

SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--Q 3 What film does the store have the most of? (search in inventory)


SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- Q4 How many customers have the last name ‘William’?

SELECT last_name
FROM customer
WHERE last_name = 'William';

-- Q5 What store employee (get the id) sold the most rentals?




SELECT COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT (staff_id) asc;




-- Q6 How many different district names are there?



SELECT district, COUNT(district)
FROM address
GROUP BY district
ORDER BY COUNT(district)DESC;





-- Q7 What film has the most actors in it? (use film_actor table and get film_id)

SELECT MAX(actor_id )
FROM film_actor;








-- Q8 From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT first_name, last_name
FROM customer
WHERE last_name LIKE '%es';





-- Q9 How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) >250;







--Q 10 Within the film table, how many rating categories are there? And what rating has the most
--movies total?

SELECT COUNT (DISTINCT rating)
FROM film;
--WHERE rating;
