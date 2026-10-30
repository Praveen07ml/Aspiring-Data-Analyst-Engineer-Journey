
-- Retrieve all columns and all records from the sales table.

SELECT *
FROM sales;


-- Retrieve only the product column.

SELECT product_name
FROM sales;


-- Retrieve the customer_name and amount columns.

SELECT customer_name,unit_price
FROM sales;


-- Retrieve the sale_id, customer_name, and product columns, in that exact order.

SELECT sale_id,customer_name,product_name
FROM sales;


-- Retrieve the amount and product columns, in that exact order.

SELECT unit_price,product_name
FROM sales;


-- Business scenario: Your manager wants a report containing only the customer names and products purchased. Write the SQL query.

SELECT customer_name,product_name
FROM sales;


-- Business scenario: Your manager wants to inspect all the information available for every sales transaction. Write the SQL query.

SELECT * 
FROM sales;


-- Retrieve customer_name, but display its heading as customer.

SELECT customer_name as customer
FROM sales;


-- Retrieve product_name, but display its heading as product.

SELECT product_name as product
FROM sales;

-- Retrieve unit_price, but display its heading as price.

SELECT unit_price as price
FROM sales;


-- Retrieve sale_id and customer_name, displaying their headings as transaction_id and customer, respectively.

SELECT 
	sale_id as transaction_id,
	customer_name as customer
FROM sales;

--Your manager wants a report showing customer_name, product_name, and quantity. Display the column headings as customer, product, and units_sold, respectively.

SELECT 
	customer_name as customer,
	product_name as product,
	quantity as units_sold
FROM sales;


-- Business scenario: Your manager wants a report with these headings:transaction_id	customer	product	price


SELECT
	sale_id as transaction_id,
	customer_name as customer,
	unit_price as product_price
FROM sales;


-- Retrieve all columns for sales transactions where the region is 'South'.

SELECT *
FROM sales
WHERE region = 'South';


-- Retrieve only sale_id, customer_name, and region for transactions where the region is 'North'.

SELECT 
	sale_id,
	customer_name,
	region
FROM sales
WHERE region = 'North';

-- Retrieve all columns for transactions where the quantity is greater than 2.

SELECT *
FROM sales
WHERE quantity > 2;

-- Retrieve customer_name, product_name, and unit_price for transactions where the unit price is less than 1000.

SELECT 
	customer_name,
	product_name,
	unit_price
FROM sales
WHERE unit_price < 1000;

-- Retrieve sale_id, customer_name, and product_name for transactions where the sales channel is 'Online'

SELECT
	sale_id,
	customer_name,
	product_name
FROM sales
WHERE sales_channel = 'Online';


-- Find all transactions where the payment method is UPI.Retrieve sale_id, customer_name, and payment_method.

SELECT 
	sale_id,
	customer_name,
	payment_method
FROM sales
WHERE payment_method = 'UPI';


-- Your manager wants to identify transactions involving at least 3 units of a product.Retrieve sale_id, product_name, and quantity.

SELECT
	sale_id,
	product_name,
	quantity
FROM sales
WHERE quantity >= 3;



-- Retrieve all columns for transactions where the unit price is greater than ₹1,000.

SELECT *
FROM sales
WHERE unit_price > 1000;


-- Retrieve sale_id, customer_name, and region for transactions that did not occur in the South region.

SELECT
	sale_id,
	customer_name,
	region
FROM sales
WHERE region <> 'South';


-- Retrieve product_name and unit_price for products priced at ₹1,000 or less.

SELECT
	product_name,
	unit_price
FROM sales
WHERE unit_price <= 1000;


-- Retrieve sale_id, product_name, and quantity for transactions involving 2 units or fewer.

SELECT
	sale_id,
	product_name,
	quantity
FROM sales
WHERE quantity <= 2;


-- Retrieve sale_id, customer_name, and payment_method for transactions where the payment method is not 'UPI'.

SELECT
	sale_id,
	customer_name,
	payment_method
FROM sales
WHERE payment_method <> 'UPI';


-- Retrieve sale_id, product_name, and unit_price for products priced at exactly ₹799.

SELECT 
	sale_id,
	product_name,
	unit_price
FROM sales
WHERE unit_price = 799;


-- Your manager wants to identify transactions involving quantities of at least 2 units.

SELECT 
	sale_id,
	customer_name,
	quantity
FROM sales
WHERE quantity >= 2;

-- Your manager wants to identify transactions with a unit price between two business thresholds, but for now asks you to retrieve products priced below ₹500.


SELECT 
	 product_name,
	 unit_price
FROM sales
WHERE unit_price < 500;

-- Retrieve sale_id, customer_name, and unit_price for transactions where:

-- The region is 'South'.
-- The unit price is greater than ₹500.


SELECT 
	sale_id,
	customer_name,
	unit_price
FROM sales
WHERE region = 'South' and unit_price > 500;


-- Retrieve sale_id, product_name, and quantity for transactions where:

-- The quantity is at least 2.
-- he quantity is at most 4.


SELECT 
	sale_id,
	product_name,
	quantity
FROM sales
WHERE quantity >= 2 and quantity <= 4;


-- Retrieve sale_id, customer_name, and region for transactions where the region is either 'North' or 'South'.

SELECT 
	sale_id,
	customer_name,
	region
FROM sales
WHERE region = 'North' or region = 'South';


-- Retrieve sale_id, product_name, and unit_price for transactions where the unit price is below ₹500 or above ₹2,000.

SELECT 
	sale_id,
	product_name,
	unit_price
FROM sales
WHERE unit_price < 500 or unit_price > 2000;


-- Retrieve sale_id, customer_name, and sales_channel for transactions that are not from the 'Online' sales channel.

SELECT 
	sale_id,
	customer_name,
	sales_channel
FROM sales
WHERE sales_channel <> 'Online';


-- Retrieve sale_id, product_name, region, and unit_price for transactions where:

-- The region is 'South' or 'North'.
-- The unit price is greater than ₹1,000.


SELECT 
	sale_id,
	product_name,
	region,
	unit_price
FROM sales
WHERE (region = 'South' or region = 'North')
	AND
	unit_price > 1000;

-- Your manager wants to identify transactions that meet both requirements:

-- The payment method is 'UPI'.
-- The quantity is at least 2.

-- Retrieve sale_id, customer_name, payment_method, and quantity.


SELECT 
	sale_id,
	customer_name,
	payment_method,
	quantity
FROM sales
WHERE payment_method = 'UPI' and quantity >= 2;


-- Your manager wants transactions that satisfy either requirement:

-- The sales channel is 'Online'.
-- The payment method is 'Cash'.

-- Retrieve sale_id, customer_name, sales_channel, and payment_method.


SELECT
	sale_id,
	customer_name,
	sales_channel,
	payment_method
FROM sales
WHERE sales_channel = 'Online' or sales_channel = 'Cash';


-- Retrieve sale_id, customer_name, and region for transactions from the North, South, or East regions.


SELECT 
	sale_id,
	customer_name,
	region
FROM sales
WHERE region IN ('North','South','East');


-- Retrieve sale_id, product_name, and payment_method for transactions paid using UPI or Cash

SELECT
	sale_id,
	product_name,
	payment_method
FROM sales
WHERE payment_method IN ('UPI','Cash');


-- Retrieve sale_id, product_name, and unit_price for products priced between ₹500 and ₹2,000, inclusive.

SELECT
	sale_id,
	product_name,
	unit_price
FROM sales
WHERE unit_price BETWEEN 500 AND 2000;



-- Retrieve sale_id, product_name, and quantity for transactions involving between 2 and 5 units, inclusive.


SELECT
	sale_id,
	product_name,
	quantity
FROM sales
WHERE quantity BETWEEN 2 AND 5;


-- Retrieve sale_id and product_name for products whose names begin with W.

SELECT 
	sale_id,
	product_name
FROM sales
WHERE product_name like 'W%';

-- Retrieve sale_id and product_name for products whose names end with Cable.

SELECT 
	sale_id,
	product_name
FROM sales
WHERE product_name like '%Cable';


-- Retrieve sale_id and product_name for products whose names contain Book.

SELECT
	sale_id,
	product_name
FROM sales
WHERE product_name like '%Book%';


-- Your manager wants to analyze transactions from the North or West regions where the unit price is between ₹500 and ₹2,000, inclusive.

-- Retrieve sale_id, product_name, region, and unit_price.

SELECT
	sale_id,
	product_name,
	region,
	unit_price
FROM sales
WHERE (region IN ('North','West')) AND (unit_price BETWEEN 500 AND 2000); 


