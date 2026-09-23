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
