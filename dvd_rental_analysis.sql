-- DVD Rental Database Analysis
-- Tool: PostgreSQL and pgAdmin 4
-- Purpose: Analyze films, customers, rentals, and payments

-- Question 1:
-- What are the 10 most expensive films to rent?

SELECT
    title AS film_title,
    rental_rate
FROM film
ORDER BY rental_rate DESC
LIMIT 10;


-- Question 2:
-- Which films have a rental rate greater than $4.00?

SELECT
    title AS film_title,
    rental_rate,
    rating
FROM film
WHERE rental_rate > 4.00
ORDER BY rental_rate DESC, title ASC;


-- Question 3:
-- How many films are available in each rating category?

SELECT
    rating,
    COUNT(*) AS total_films
FROM film
GROUP BY rating
ORDER BY total_films DESC;


-- Question 4:
-- Which customers live in California?

SELECT
    c.first_name,
    c.last_name,
    a.address,
    a.district
FROM customer AS c
INNER JOIN address AS a
    ON c.address_id = a.address_id
WHERE a.district = 'California'
ORDER BY c.last_name, c.first_name;
