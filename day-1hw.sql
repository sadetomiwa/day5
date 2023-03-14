--QUESTION 1. How many actors are there with the last name ‘Wahlberg’?

SELECT COUNT(*)
FROM actor 
WHERE last_name = 'Wahlberg';
---Answer = 2 ----

--QUESTION 2. How many payments were made between $3.99 and $5.99?
SELECT  COUNT(*)
FROM payment 
WHERE amount >= 3.99 AND amount <= 5.99;
-- ANSWER 5,607---

--QUESTION 3. What films have exactly 7 copies? (search in inventory)
SELECT*
FROM inventory 
WHERE film_id = 7;
----

--QUESTION 4. How many customers have the first name ‘Willie’?
SELECT COUNT(*)
FROM customer 
WHERE first_name = 'Willie';
--answer 2


--QUESTION 5. What store employee (get the id) sold the most rentals (use the rental table)?

SELECT staff_id , COUNT(rental_id) 
FROM rental 
GROUP BY staff_id ;
--ANSWER EQUALS STAFF ID 2

--6. How many unique district names are there?
--SELECT district 
--FROM address 

--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id,actor_id 
FROM film_actor 
GROUP BY  film_id, actor_id 
ORDER BY actor_id  DESC;
-- ANSWER FILM_ID -958

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT last_name, store_id
FROM customer 
WHERE last_name LIKE '%es'
GROUP BY store_id,last_name  
HAVING store_id = 1;
--ANSWER 13-----

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)------

SELECT *
FROM payment;














