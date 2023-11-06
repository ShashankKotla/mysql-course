-- USE sql_store;

-- Select statement
-- SELECT 1,2
-- FROM customers
-- WHERE customer_id = 1
-- ORDER BY first_name

-- select in detail:
-- SELECT 
-- 	last_name,
-- 	first_name,
--     points,
--     (points + 10) * 100 AS 'discount factor'
-- FROM customers

-- Distinct keyword
-- SELECT DISTINCT state
-- FROM customers

-- Where clause, With comparision operators
-- SELECT * 
-- FROM customers
-- WHERE points > 3000
-- WHERE state = "VA"
-- WHERE state != "VA"
-- WHERE state <> "VA"
-- WHERE birth_date > '1990-01-01' -- we use quotes for date representation.

-- The AND,OR,NOT operators
-- SELECT * 
-- FROM customers
-- WHERE birth_date > '1990-01-01' AND points > 1000;
-- WHERE birth_date > '1990-01-01' OR points > 1000;
-- WHERE birth_date > '1990-01-01' OR (points >1000 AND state = 'VA');
 -- WHERE NOT (birth_date > '1990-01-01' OR points >1000);
 
 -- The IN Operator
 -- SELECT * FROM customers
 -- WHERE state IN ('VA', 'FL', 'GA');
 -- WHERE state NOT IN ('VA', 'FL', 'GA');
 
 -- The BETWEEN Operator
--  SELECT * FROM customers
--  WHERE points BETWEEN 1000 AND 3000;

-- The LIKE Operator
-- SELECT * FROM customers
-- WHERE last_name LIKE '%b%'; 
-- WHERE last_name LIKE '%y';
-- WHERE last_name LIKE 'b____y';

-- The REGEXP Operator (it is more powerful & solves complex string pattern matching than LIKE.
-- SELECT * FROM customers
-- WHERE last_name REGEXP 'field';
-- WHERE last_name REGEXP '^field';
-- WHERE last_name REGEXP 'field$';
-- WHERE last_name REGEXP 'field|mac|rose';
-- WHERE last_name REGEXP '^field|mac|rose';
-- WHERE last_name REGEXP 'field$|mac|rose';
-- WHERE last_name REGEXP 'e';
-- WHERE last_name REGEXP '[gim]e';

-- The IS NULL Operator (To find null values)
-- SELECT * FROM customers WHERE phone IS NULL;

-- The ORDER BY clause
-- SELECT * FROM customers
-- ORDER BY first_name;
-- ORDER BY state, first_name;
-- ORDER BY state DESC, first_name DESC;
-- Note:we can sort data by any coloums whether that column is present in SELECT clause or not
-- SELECT first_name, last_name 
-- FROM customers
-- ORDER BY birth_date;
-- SELECT first_name, last_name, 10 AS points FROM customers ORDER BY points, first_name;

-- the LIMIT clause
-- SELECT * FROM customers 
-- LIMIT 3;
-- LIMIT 6, 3;
-- Here at 6, it will skips 6 records and 3 indicates, 7-9 records it's like after skiping 6 then starting 
-- things are gonna like 1, 2, 3 etc.. so we keep 3.

-- INNER JOINS
----  SELECT order_id, first_name, last_name 
-- -- FROM orders 
-- -- JOIN customers ON order_customer_id = customers.customer_id;

-- Joining Across DB
-- USE sql_inventory
-- SELECT * 
-- FROM sql_store.order_items order_id
-- JOIN products p 
--     ON oi.product_id = p.product_id;

--SELF JOINS
--SELECT e.employee_id, e.first_name, m.first_name AS manager
-- FROM employees e
-- JOIN employees m 
--     ON e.reports_to = m.employee_id;

-- JOINING MULTIPLE TABLES
-- USE sql_store;

SELECT o.order_id, o.order_date, c.first_name, c.last_name, os.name AS status
FROM orders o
JOIN customers c 
    ON o.customer_id = c.customer_id
JOIN order_statuses os
    ON o.status = os.order_status_id










