-- 1.Exercise 
-- Return all the products
-- name
-- unit price
-- new price(unit price * 1.1)

-- SELECT 
-- 	name,
-- 	unit_price,
--     unit_price * 1.1 AS new_price
-- FROM products


-- 2. Get the orders placed this year. (Orders table)

-- SELECT *
-- FROM orders
-- WHERE order_date >= '2019-01-30'

-- 3. From the order_items table, get the items for orders #6 Where the total price is greater than 30

-- SELECT * FROM customers WHERE order_id = 6 AND quantity * unit_price > 30;

-- 4. Return products with quality in stock equal to 49, 38, 72

-- SELECT * FROM products WHERE quantity_in_stock IN ('49', '38', '72');

-- 5. Return cuustomers born between 1/1/1990 and 1/1/2000

-- SELECT * FROM customers WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';
 
-- 6. Get the customers whose 1)addresses contain TRAIL or AVENUE, 2)phone number ends with 9

-- SELECT * FROM customers
-- WHERE  address LIKE '%TRAIL%' OR 
-- 		address LIKE  '%AVENUE%';
-- WHERE phone LIKE '%9';

-- 7. Get the customers whose
-- 1.first names are ELKA or AMBUR
-- 2. last names are ends with EY or ON
-- 3.last names starts with MY or contains SE 
-- 4. last names contains B followed by R or U

-- SELECT * FROM customers
-- WHERE first_name REGEXP 'elka|ambur';
-- WHERE last_name REGEXP 'ey$|on$';
-- WHERE last_name REGEXP '^my|se';
 -- WHERE last_name REGEXP 'b[ru]';
 
-- 8. Get Null values
 -- SELECT * FROM orders
 -- WHERE shipped_date IS NULL;
 -- WHERE shipper_id IS NULL;

-- 9. Get item from each order from order_items
-- Note: Get orderitem = 2 and sort by total_price
-- SELECT * FROM order_items 
-- WHERE order_id=2
-- ORDER BY quantity * unit_price DESC;

-- 10. GET the top three loyal customers
-- USE sql_store;
-- SELECT * FROM customers ORDER BY points DESC LIMIT 3;

-- 11. write a query & join the table with the products table so for each order return
-- both the product id as well as this name, followed by quantity & unit_price from the order items
-- table & make use an alias to simplify your code.
--SELECT order_id, o.product_id, o.quantity, o.unit_price 
--FROM order_items o
--JOIN products p
    -- ON o.product_id = p.product_id;






    
