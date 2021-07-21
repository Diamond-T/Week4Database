--Question one List everyone from Texas using JOIN

 SELECT *
FROM customer
JOIN order_
ON customer.customer_state = customer.customer_id;

--Question 2 Get all payments above Customers name

 

SELECT *
FROM payments
WHERE payments_id IN (
    
    SELECT actor_id
    FROM film_actor
    WHERE actor_id < 10
);

SELECT *
from payments;


--I do not understand any of the questions or how to do Inner