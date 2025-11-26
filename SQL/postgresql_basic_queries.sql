-- Show first 10 restaurants
SELECT * FROM restaurants LIMIT 10 ;

-- Show the total number of restaurants
SELECT COUNT(*) FROM restaurants;

-- Show the members of a particular city
SELECT first_name, surname
FROM members 
WHERE city_id=2
LIMIT 2;

-- Orders above 100
SELECT * FROM orders
WHERE total_order > 100;

-- Restaurants with income_percentage greater than 10%
SELECT * FROM restaurants
WHERE income_percentage < 0.075;

-- Sorting by total orders
SELECT * FROM orders
ORDER BY total_order
DESC;