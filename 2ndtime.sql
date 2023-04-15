SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick' or first_name = 'nick';


SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Jo%';


SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'D%';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%__';

SELECT*
FROM payment;

SELECT customer_id, amount
FROM payment
Where amount > 2.00; 

SELECT customer_id, amount
FROM payment
Where amount <= 5.99; 

SELECT customer_id, amount
FROM payment
Where amount >= 7.99; 

SELECT customer_id, amount
FROM payment
Where amount <= 2.99
ORDER BY amount ASC;

SELECT customer_id, amount
FROM payment
Where amount BETWEEN 7.99 AND 9.99;

SELECT customer_id, amount
FROM payment
Where amount <> 5.99
ORDER BY amount DESC;

SELECT SUM(amount)
FROM payment
WHERE amount >2.99

SELECT AVG(amount)
FROM payment
WHERE amount > 1.99;


SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

SELECT COUNT (DISTINCT amount)
FROM payment
WHERE amount > 5.99;

SELECT MIN(amount) AS Min_Num_Payments
FROM payment
WHERE amount > 7.99;

SELECT MAX(amount) AS Max_Num_Payments
FROM payment
WHERE amount > 7.99;



SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY amount 
ORDER BY amount;


SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount);

SELECT customer_id, amount
FROM payment
GROUP BY amount, customer_id
ORDER BY customer_id DESC;

SELECT *
FROM customer;


SELECT COUNT(first_name), first_name
FROM customer
WHERE first_name LIKE 'J%'
GROUP BY first_name
HAVING COUNT(first_name)> 1;

