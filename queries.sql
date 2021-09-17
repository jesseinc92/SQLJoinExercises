-- 1
SELECT * FROM owners
    FULL OUTER JOIN vehicles
    ON owners.id = vehicles.owner_id;

-- 2
SELECT first_name, last_name, COUNT(*)
    FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY owners.id
    ORDER BY first_name;

-- 3
SELECT first_name, last_name, ROUND(AVG(vehicles.price)) AS average_price, COUNT(*)
    FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY owners.first_name, owners.last_name
    HAVING COUNT(*) > 1 AND ROUND(AVG(vehicles.price)) > 10000
    ORDER BY owners.first_name DESC;