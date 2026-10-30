CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INTEGER,
    unit_price NUMERIC(10,2),
    discount_pct NUMERIC(5,2),
    region VARCHAR(30),
    sales_channel VARCHAR(20),
    payment_method VARCHAR(30)
);


INSERT INTO sales
(sale_id, order_date, customer_name, product_name, category,
 quantity, unit_price, discount_pct, region, sales_channel, payment_method)
VALUES

(1001, '2025-01-03', 'Aarav Sharma', 'Wireless Mouse', 'Electronics',
 2, 799.00, 5.00, 'South', 'Online', 'UPI'),

(1002, '2025-01-04', 'Priya Reddy', 'Office Chair', 'Furniture',
 1, 5499.00, 10.00, 'North', 'In-Store', 'Card'),

(1003, '2025-01-05', 'Kiran Kumar', 'Notebook', 'Stationery',
 5, 80.00, 0.00, 'East', 'Online', 'UPI'),

(1004, '2025-01-07', 'Sneha Iyer', 'USB-C Cable', 'Electronics',
 3, 399.00, 5.00, 'West', 'Online', 'Card'),

(1005, '2025-01-08', 'Rahul Verma', 'Water Bottle', 'Home',
 2, 499.00, 0.00, 'South', 'In-Store', 'Cash'),

(1006, '2025-01-10', 'Ananya Rao', 'Desk Lamp', 'Home',
 1, 1299.00, 8.00, 'East', 'Online', 'UPI'),

(1007, '2025-01-12', 'Arjun Mehta', 'Keyboard', 'Electronics',
 1, 1999.00, 10.00, 'North', 'Online', 'Card'),

(1008, '2025-01-13', 'Divya Nair', 'Backpack', 'Accessories',
 2, 1499.00, 5.00, 'West', 'In-Store', 'UPI'),

(1009, '2025-01-15', 'Vikram Singh', 'Monitor', 'Electronics',
 1, 12499.00, 12.00, 'South', 'Online', 'Net Banking'),

(1010, '2025-01-17', 'Meera Das', 'Pen Set', 'Stationery',
 4, 150.00, 0.00, 'East', 'In-Store', 'Cash'),

(1011, '2025-02-01', 'Rohan Gupta', 'Office Desk', 'Furniture',
 1, 8999.00, 10.00, 'North', 'Online', 'Card'),

(1012, '2025-02-03', 'Pooja Menon', 'Headphones', 'Electronics',
 2, 2499.00, 7.00, 'West', 'Online', 'UPI'),

(1013, '2025-02-05', 'Suresh Naidu', 'Coffee Mug', 'Home',
 6, 199.00, 0.00, 'South', 'In-Store', 'Cash'),

(1014, '2025-02-08', 'Kavya Reddy', 'Printer', 'Electronics',
 1, 8999.00, 15.00, 'East', 'Online', 'Net Banking'),

(1015, '2025-02-10', 'Aman Khan', 'File Folder', 'Stationery',
 10, 45.00, 0.00, 'North', 'In-Store', 'UPI'),

(1016, '2025-02-12', 'Nisha Patel', 'Yoga Mat', 'Sports',
 2, 999.00, 5.00, 'West', 'Online', 'Card'),

(1017, '2025-02-15', 'Harish Babu', 'Running Shoes', 'Sports',
 1, 3499.00, 10.00, 'South', 'Online', 'UPI'),

(1018, '2025-02-18', 'Isha Kapoor', 'Bookshelf', 'Furniture',
 1, 6999.00, 8.00, 'East', 'In-Store', 'Card'),

(1019, '2025-03-02', 'Dev Malhotra', 'Power Bank', 'Electronics',
 2, 1799.00, 5.00, 'North', 'Online', 'UPI'),

(1020, '2025-03-05', 'Lakshmi Devi', 'Travel Bag', 'Accessories',
 1, 2299.00, 10.00, 'West', 'In-Store', 'Cash');



 SELECT *
 FROM sales;