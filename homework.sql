--Question one List everyone from Texas using JOIN

SELECT customer_id, customer.adddress_id, address.address_id, first_name, last_name
FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE district = "Texas";

--table .column  combine with table then column then table


--Question 2 Get all payments above Customers name

SELECT payment_id, first_name, last_name, amount
FROM payment
JOIN customer
ON payment.customer_id = customer.customer_id
WHERE amount > 6.99;

--Question 3
SELECT  customer_id, first_name, last_name
FROM customer
WHERE customer_id IN(
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM (amount) >175;


--question 4

SELECT customer_id, first_name, last_name, country
FROM customer
JOIN address
ON customer.addres_id = address.address_id
JOIN city
ON address.city_id = city.city_id
JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';

--question 5

SELECT staff.staff_id first_name, last_name, COUNT(*)
FROM payment
JOIN staff
ON payment.staff_id = staff.staff_id
GROUP BY staff.staff_id, first_name, last_name
ORDER BY COUNT(*) DESC
LIMIT 1;


--question 6

SELECT film.film_id, COUNT(*)
FROM film_actor
JOIN film
ON film_actor.film_id = film_id
GROUP BY film.film_id, title
ORDER BY COUNT DESC
LIMIT 1;

--question 7

SELECT actor.actor_id COUNT(*)
FROM film_actor
ON film_actor.actor_id = actor.actor_id
GROUP BY actor_id.actor_id, first_name,last_name
ORDER BY COUNT(*)
LIMIT 1; 

--Question 8
SELECT  district, COUNT(*)
FROM address
GROUP BY district
HAVING COUNT(*) > 5;