DELETE FROM film_category
WHERE film_id in (
    SELECT film_id
    FROM film
    WHERE title = 'It'
  );

DELETE FROM film_actor
WHERE film_id in (
    SELECT film_id
    FROM film
    WHERE title = 'It'
  );

DELETE FROM payment
WHERE rental_id in (
    SELECT rental_id
    FROM rental
    WHERE inventory_id in (
        SELECT inventory_id
        FROM inventory
        WHERE film_id in (
            SELECT film_id
            FROM film
            WHERE title = 'It'
          )
      )
  );

DELETE FROM rental
WHERE inventory_id in (
    SELECT inventory_id
    FROM inventory
    WHERE film_id in (
        SELECT film_id
        FROM film
        WHERE title = 'It'
      )
  );

DELETE FROM inventory
WHERE film_id in (
    SELECT film_id
    FROM film
    WHERE title = 'It'
  );

DELETE FROM film
WHERE title = 'It'