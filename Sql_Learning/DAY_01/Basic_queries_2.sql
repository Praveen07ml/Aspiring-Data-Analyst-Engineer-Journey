-- Retrieve sale_id, product_name, and unit_price, sorting by unit price from lowest to highest.

SELECT 
	sale_id,
	product_name,
	unit_price
FROM sales
ORDER BY unit_price asc;


-- Retrieve sale_id, product_name, and unit_price, sorting by unit price from highest to lowest.

SELECT
	sale_id,
	product_name,
	unit_price
FROM sales
ORDER BY unit_price desc;


-- Retrieve sale_id and customer_name, sorting customer names alphabetically.

SELECT 
	sale_id,
	customer_name
FROM sales
ORDER BY customer_name asc;

-- Retrieve sale_id, product_name, and quantity, sorting by quantity from highest to lowest.

SELECT 
	sale_id,
	product_name,
	quantity
FROM sales
ORDER BY quantity desc;


-- Retrieve sale_id, region, and unit_price, sorting regions alphabetically and unit prices from highest to lowest within each region.


SELECT 
	sale_id,
	region,
	unit_price
FROM sales
ORDER BY region asc, unit_price desc;



-- Your manager wants to see transactions from the South region, ordered from the most expensive to the least expensive.
-- Retrieve sale_id, customer_name, region, and unit_price.

SELECT
	sale_id,
	customer_name,
	unit_price
FROM sales
WHERE region = 'South'
ORDER BY unit_price desc;


-- Your manager wants to review UPI transactions, with the highest quantities appearing first.

-- Retrieve sale_id, customer_name, payment_method, and quantity.


SELECT 
	sale_id,
	customer_name,
	payment_method,
	quantity
FROM sales
WHERE payment_method = 'UPI'
ORDER BY quantity desc;


-- Retrieve all columns but return only the first five rows.


SELECT *
FROM sales
LIMIT 5;


-- Retrieve sale_id, product_name, and unit_price for the three most expensive transactions.

SELECT 
	sale_id,
	product_name,
	unit_price
FROM sales
ORDER BY unit_price desc
LIMIT 3;


-- Retrieve sale_id, customer_name, and quantity for the four transactions with the highest quantities.

SELECT 
	sale_id,
	customer_name,
	quantity
FROM sales
ORDER BY quantity desc
LIMIT 4;

-- Retrieve sale_id, customer_name, and unit_price for the five transactions with the lowest unit prices.


SELECT 
	sale_id,
	customer_name,
	unit_price
FROM sales
ORDER BY unit_price asc
LIMIT 5;


-- Your manager wants to review the three most expensive transactions from the South region.
-- Retrieve sale_id, customer_name, region, and unit_price.


SELECT 
	sale_id,
	customer_name,
	region,
	unit_price
FROM sales
WHERE region = 'South'
ORDER BY unit_price DESC
LIMIT 3;

-- Your manager wants to inspect the first three UPI transactions when the results are sorted by quantity from highest to lowest.
-- Retrieve sale_id, customer_name, payment_method, and quantity.

SELECT 
	sale_id,
	customer_name,
	payment_method,
	quantity
FROM sales
WHERE payment_method = 'UPI'
ORDER BY quantity desc
LIMIT 3;


-- Retrieve sale_id, product_name, unit_price, and quantity. Calculate the total amount as unit_price * quantity and name the calculated column total_amount.

SELECT
	sale_id,
	product_name,
	unit_price,
	quantity,
	unit_price * quantity as total_amount
FROM sales;


-- Retrieve product_name and unit_price. Calculate a price after subtracting ₹100 and name the calculated column discounted_price.

SELECT 
	product_name,
	unit_price,
	unit_price - 100 as discounted_price
FROM sales;

-- Retrieve sale_id, product_name, and unit_price. Calculate a price after adding ₹50 and name the calculated column adjusted_price

SELECT 
	sale_id,
	product_name,
	unit_price, 
	unit_price + 50 as adjusted_price
FROM sales;



-- Retrieve sale_id, unit_price, and quantity. Calculate the unit price multiplied by the quantity and name the result revenue.

SELECT
	sale_id,
	unit_price,
	quantity,
	unit_price * quantity as revenue
FROM sales;


-- Your manager wants to review each transaction's total amount, from highest to lowest.

-- Retrieve sale_id, product_name, unit_price, and quantity, calculate total_amount, and sort the results by total_amount in descending order.

-- Hint: You can use an arithmetic expression in ORDER BY or sort by the alias total_amount.

SELECT 
	sale_id,
	product_name,
	unit_price,
	quantity,
	unit_price * quantity as total_amount
FROM sales
ORDER BY total_amount desc;




-- Your manager wants to inspect the three transactions with the highest total amounts.

-- Retrieve sale_id, customer_name, unit_price, and quantity. Calculate total_amount, sort from highest to lowest, and return only three rows.


SELECT 
	sale_id,
	customer_name,
	unit_price,
	quantity,
	unit_price * quantity as total_amount
FROM sales
ORDER BY total_amount desc
LIMIT 3;

