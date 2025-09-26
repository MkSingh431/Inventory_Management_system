Inventory Management System:
This project involves creating a Simple Inventory Management System using SQL, designed for beginners. It encompasses the creation of a database with essential tables for managing products, suppliers, inventory levels, and transactions. The system provides functionalities to add, update, and delete products, track stock levels, record sales transactions, and generate inventory reports.

Creating the Database in MySQL or PostgreSQL:

Create the Database:

-- Create the database for the Inventory Management System
CREATE DATABASE InventoryDB;
USE InventoryDB;
Create the Tables:

Products Table:

This table will store information about each product, such as its name, price, and category.

Structure:

Column Name	Data Type	Description
product_id	INT	Unique identifier for each product (Primary Key)
product_name	VARCHAR(255)	Name of the product
price	DECIMAL(10, 2)	Price of the product
category	VARCHAR(100)	Category to which the product belongs
Code:

-- Create the Products table
CREATE TABLE Products (
    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(100)
);
Suppliers Table:

This table will store supplier details, including contact information.

Structure:

Column Name	Data Type	Description
supplier_id	INT	Unique identifier for each supplier (Primary Key)
supplier_name	VARCHAR(255)	Name of the supplier
contact_email	VARCHAR(255)	Email address of the supplier
phone_number	VARCHAR(15)	Contact number of the supplier
Code:

-- Create the Suppliers table
CREATE TABLE Suppliers (
    supplier_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(255),
    phone_number VARCHAR(15)
);
Inventory Table:

This table will manage the stock levels for products.

Structure:

Column Name	Data Type	Description
inventory_id	INT	Unique identifier for each inventory record (Primary Key)
product_id	INT	Foreign Key (references product_id in Products)
quantity	INT	Current stock quantity of the product
supplier_id	INT	Foreign Key (references supplier_id in Suppliers)
last_updated	DATE	Date when the stock was last updated
Code:

-- Create the Inventory table
CREATE TABLE Inventory (
    inventory_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity INT DEFAULT 0,
    supplier_id INT,
    last_updated DATE DEFAULT (CURRENT_DATE_,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);
Transactions Table:

This table will record product transactions, either purchases (stocking up) or sales (reducing stock).

Structure:

Column Name	Data Type	Description
transaction_id	INT	Unique identifier for each transaction (Primary Key)
product_id	INT	Foreign Key (references product_id in Products)
transaction_type	ENUM('sale', 'purchase')	Indicates whether the transaction is a sale or purchase
transaction_date	DATE	Date when the transaction took place
quantity	INT	Number of products involved in the transaction
Code:

-- Create the Transactions table
CREATE TABLE Transactions (
    transaction_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    transaction_type ENUM('sale', 'purchase') NOT NULL,
    transaction_date DATE DEFAULT (CURRENT_DATE),
    quantity INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
Inserting Data:

Add some sample data to the tables.

Inserting Data into Products Table:

-- Insert sample products into Products table
INSERT INTO Products (product_name, price, category) VALUES
('Laptop', 1200.00, 'Electronics'),
('Desk Chair', 150.00, 'Furniture'),
('Notebook', 2.50, 'Stationery');
Inserting Data into Suppliers Table:

-- Insert sample suppliers into Suppliers table
INSERT INTO Suppliers (supplier_name, contact_email, phone_number) VALUES
('Tech Supplies Co.', 'contact@techsupplies.com', '1234567890'),
('Office Furniture Inc.', 'support@officefurniture.com', '0987654321');
Inserting Data into Inventory Table:

-- Insert initial inventory levels for products
INSERT INTO Inventory (product_id, quantity, supplier_id) VALUES
(1, 10, 1), -- Laptop from Tech Supplies Co.
(2, 20, 2), -- Desk Chair from Office Furniture Inc.
(3, 100, 2); -- Notebook from Office Furniture Inc.
Inserting Data into Transactions Table:

-- Insert sample transactions
INSERT INTO Transactions (product_id, transaction_type, quantity) VALUES
(1, 'purchase', 10), -- Purchased 10 laptops
(2, 'purchase', 20), -- Purchased 20 desk chairs
(3, 'purchase', 100); -- Purchased 100 notebooks
-- Sales transaction: selling 5 laptops
INSERT INTO Transactions (product_id, transaction_type, quantity) VALUES
(1, 'sale', 5);
Basic Functionalities:

Add New Products: Functionality to add new products to the inventory, including details like product name, description, category, quantity, and price.
Update Product Information: Ability to update product details such as name, quantity, and price.
Track Stock Levels: Monitor the stock levels of each product, alerting when a product is running low.
Record Sales Transactions: Track sales, reduce the stock count when a product is sold, and record sales information for future reference.
View Product Details: Display information on each product, including stock quantity and price.
Generate Inventory Reports: Generate reports on stock levels, sales trends, or low-stock products to help manage inventory efficiently.
Search Products: Search for products by name or category to quickly find items in the inventory.
Delete Products: Remove outdated or discontinued products from the inventory.
Writing Queries for Functionality:

Query-1: Check Product Stock Levels

-- Select the product name and quantity from the Products and Inventory tables
SELECT p.product_name, i.quantity
-- Join the Inventory table with the Products table using the product_id
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id;
Explanation:

This query retrieves the current stock levels by displaying the product names along with their quantity in inventory. It joins the Inventory and Products tables using the product_id, allowing the query to match each product with its corresponding stock quantity.

Output:

product_name	quantity
Laptop	10
Desk Chair	20
Notebook	100
Query-2: Update Stock Levels After Sale or Purchase

-- Update Stock After a Sale
-- Decrease the quantity of the product with product_id 2 (desks) by 3 units after a sale
UPDATE Inventory
SET quantity = quantity - 3
WHERE product_id = 2;

-- Update Stock After a Purchase
-- Increase the quantity of the product with product_id 1 (laptops) by 10 units after a purchase
UPDATE Inventory
SET quantity = quantity + 10
WHERE product_id = 1;
Explanation:

The first query updates the inventory after a sale by decreasing the quantity of desks (product with product_id = 2) by 3 units. The second query updates the stock after receiving new inventory by increasing the quantity of laptops (product with product_id = 1) by 10 units. Both queries modify the Inventory table to reflect the new stock levels after a sale and a purchase, respectively.

Output:

inventory_id	product_id	quantity	supplier_id	last_updated
1	1	10	1	2024-10-17
2	2	17	2	2024-10-17
3	3	100	2	2024-10-17
Query-3: View Transaction History for a Product

-- To view the purchase and sale history for a specific product, use the following query.
-- This query retrieves the transaction history for a specific product with product_id 1 (Laptop).
SELECT t.transaction_type, t.quantity, t.transaction_date
FROM Transactions t
JOIN Products p ON t.product_id = p.product_id -- Joining Transactions and Products tables on product_id
WHERE p.product_id = 1; -- Filtering for product_id 1
Explanation:

This query retrieves the transaction history for a specific product, in this case, the laptop with product_id = 1. It selects the transaction type, quantity, and transaction date from the Transactions table. By joining the Transactions and Products tables on the product_id, it ensures that the query only returns transactions related to the specified product. This allows users to review the purchase and sale activities associated with that particular item.

Output:

transaction_type	quantity	transaction_date
purchase	10	2024-10-17
sale	5	2024-10-17
Query-4: List Low Stock Products

-- This query identifies products that have stock levels below a certain threshold, such as 5 units.
-- View products with low stock (e.g., less than 5 units)
SELECT p.product_name, i.quantity
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id -- Joining Inventory and Products tables on product_id
WHERE i.quantity < 5; -- Filtering for products with stock levels less than 5
Explanation:

This query retrieves a list of products that have low stock levels, specifically those with fewer than 5 units available. It selects the product name and quantity from the Inventory table by joining it with the Products table on product_id. The WHERE clause filters the results to include only those products that meet the low stock criteria. This is useful for inventory management, allowing the business to identify items that may need to be reordered to avoid stockouts.

Output:

Output not generated for insufficient data
Query-5: Generate Reports for Monthly Sales

	
-- To generate a report showing the total number of products sold in a given month:
-- Generate a sales report for the current month
SELECT p.product_name, SUM(t.quantity) AS total_sold -- Selecting product name and total quantity sold
FROM Transactions t
JOIN Products p ON t.product_id = p.product_id -- Joining Transactions with Products on product_id
WHERE t.transaction_type = 'sale' -- Filtering for sales transactions
AND t.transaction_date BETWEEN '2024-10-01' AND '2024-10-31' -- Considering sales within October 2024
GROUP BY p.product_name; -- Grouping results by product name to aggregate total sold
Explanation:

This query generates a sales report that displays the total number of products sold during October 2024. It retrieves the product name and the sum of quantities sold from the Transactions table, joining it with the Products table based on the product_id. The WHERE clause filters for transactions classified as sales and restricts the date range to the specified month. Finally, the results are grouped by product_name to calculate the total quantity sold for each product. This report is valuable for analyzing sales performance and inventory needs for the month.

Output:

product_name	total_sold
Laptop	5
Query-6: Reorder Products with Low Stock

-- Automatically identify products that need to be reordered (e.g., products with stock below 5) and place a new order.
-- Reorder products with stock less than 5 units
SELECT p.product_name, i.quantity -- Selecting product name and current stock quantity
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id -- Joining Inventory with Products on product_id
WHERE i.quantity < 5; -- Filtering for products that have a stock quantity less than 5
Explanation:

This query identifies products that require reordering by selecting the names and current stock quantities of products with stock levels below 5 units. It achieves this by joining the Inventory table with the Products table on the product_id. The WHERE clause filters the results to include only those products where the quantity is less than 5, indicating that they are low in stock. This information is crucial for inventory management, allowing businesses to proactively place new orders for products that are running low and ensure they maintain adequate stock levels to meet customer demand

Output:

Output not generated for insufficient data
Query-7: Add a New Product to the Inventory

-- Insert a new product 'Monitor' into the Products table with category 'Electronics' and price 150.00
INSERT INTO Products (product_name, category, price)
VALUES ('Monitor', 'Electronics', 150.00);

-- Insert an initial stock quantity of 20 for the new product in the Inventory table
-- The product_id is retrieved using a subquery that selects the product_id for 'Monitor' from the Products table
INSERT INTO Inventory (product_id, quantity)
VALUES ((SELECT product_id FROM Products WHERE product_name = 'Monitor'), 20);
Explanation:

The provided SQL code inserts a new product called 'Monitor' into the Products table with the category 'Electronics' and a price of 150.00. After successfully adding the product, the second query inserts an initial stock quantity of 20 for the product in the Inventory table. The product_id for the new product is retrieved using a subquery that selects the product_id from the Products table where the product_name is 'Monitor'. This ensures that the correct product is referenced in the Inventory table.

Output:

Select * from Products;
product_id	product_name	price	category
1	Laptop	1200.00	Electronics
2	Desk Chair	150.00	Furniture
3	Notebook	2.50	Stationery
4	Monitor	150.00	Electronics

Select * from Inventory;

inventory_id	product_id	quantity	supplier_id	last_updated
1	1	10	1	2024-10-17
2	2	20	2	2024-10-17
3	3	100	2	2024-10-17
4	4	20	NULL	2024-10-17
Query-8: Delete a Product from the Inventory

-- Delete the product with product_id = 3 from the Inventory table to avoid foreign key conflicts
DELETE FROM Inventory WHERE product_id = 3;

-- After removing it from Inventory, delete the product from the Products table
DELETE FROM Products WHERE product_id = 3;
Explanation:

The provided SQL code performs two deletion operations. First, it deletes the product with product_id = 3 from the Inventory table. This is necessary to avoid foreign key conflicts when deleting the corresponding product from the Products table. After removing the product from Inventory, the second query deletes the product from the Products table by matching the same product_id. By removing the product from Inventory first, the database maintains referential integrity.

Output:

Select * from Inventory;
inventory_id	product_id	quantity	supplier_id	last_updated
1	1	10	1	2024-10-17
2	2	20	2	2024-10-17
Select * from Products;
product_id	product_name	price	category
1	Laptop	1200.00	Electronics
2	Desk Chair	150.00	Furniture
Query-9: View Products by Category

-- Select the product name and price from the Products table
SELECT product_name, price
-- Filter results to show only products in the 'Electronics' category
FROM Products
WHERE category = 'Electronics';
Explanation:

This SQL query retrieves the product_name and price of all products that belong to the 'Electronics' category from the Products table. The WHERE clause filters the records to include only those whose category matches 'Electronics'. The query is useful for displaying a list of electronic products along with their prices.

Output:

product_name	price
Laptop	1200.00
Query-10: Check Total Value of Inventory

-- Select the product name, quantity, price, and calculate total value for each product
SELECT p.product_name, i.quantity, p.price, 
       (i.quantity * p.price) AS total_value
-- Join the Inventory table with the Products table based on product_id
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id;
Explanation:

This SQL query retrieves the product_name, quantity, price, and the total_value (calculated as quantity * price) for each product by joining the Inventory and Products tables. The JOIN operation connects the two tables through the product_id, ensuring that the quantity from the Inventory table corresponds to the matching product from the Products table. This query helps calculate the total value of each product's stock.

Output:

product_name	quantity	price	total_value
Laptop	10	1200.00	12000.00
Desk Chair	20	150.00	3000.00
Notebook	100	2.50	250.00
Query-11: View Products Not Sold in a Given Period

-- Left join Products with Transactions to include all products, even those with no matching transactions
SELECT p.product_name
FROM Products p
LEFT JOIN Transactions t ON p.product_id = t.product_id 
-- Only consider transactions that are of type 'sale'
AND t.transaction_type = 'sale'
-- Filter for products with no transaction or transactions before September 1, 2024
WHERE t.transaction_date IS NULL OR t.transaction_date < '2024-09-01';
Explanation:

This SQL query retrieves the product_name from the Products table for products that either have no sales transactions or only had sales transactions before September 1, 2024. The query uses a LEFT JOIN to ensure that all products are listed, even those without a corresponding sales record in the Transactions table. The WHERE clause filters for products with no transactions (t.transaction_date IS NULL) or transactions that occurred before the specified date. This helps identify products that are not recently sold or haven't been sold at all.

Output:

product_name
Desk Chair
Notebook
Query-12: Calculate Total Revenue for a Given Period

-- Calculate the total revenue by multiplying the quantity sold by the product price
SELECT SUM(t.quantity * p.price) AS total_revenue
-- Join the Transactions table with the Products table to access product price
FROM Transactions t
JOIN Products p ON t.product_id = p.product_id
-- Filter for only 'sale' transactions
WHERE t.transaction_type = 'sale'
-- Only include transactions within the date range of October 1 to October 31, 2024
AND t.transaction_date BETWEEN '2024-10-01' AND '2024-10-31';
Explanation:

This query calculates the total revenue generated from sales in October 2024 by multiplying the quantity of each sold item with its price. The Transactions table is joined with the Products table to retrieve the corresponding product prices. The WHERE clause filters the data to include only sales transactions (transaction_type = 'sale') that occurred between October 1 and October 31, 2024. The result is the sum of the revenue generated during this period.

Output:

total_revenue
6000.00
Query-13: Find the Most Sold Product

-- Select the product name and the total quantity sold
SELECT p.product_name, SUM(t.quantity) AS total_sold
-- Join the Transactions table with the Products table to link products to transactions
FROM Transactions t
JOIN Products p ON t.product_id = p.product_id
-- Filter for only 'sale' transactions
WHERE t.transaction_type = 'sale'
-- Only include transactions that occurred between October 1 and October 31, 2024
AND t.transaction_date BETWEEN '2024-10-01' AND '2024-10-31'
-- Group the results by product name to calculate the total quantity sold for each product
GROUP BY p.product_name
-- Order the products by the total quantity sold in descending order (most sold first)
ORDER BY total_sold DESC
-- Limit the result to the top-selling product (one result)
LIMIT 1;
Explanation:

This query retrieves the top-selling product for the month of October 2024 by calculating the total quantity sold for each product. It joins the Transactions and Products tables to link each transaction to the respective product. The WHERE clause filters for sales transactions (transaction_type = 'sale') within the specified date range of October 1 to October 31, 2024. The results are grouped by product name, with the sum of the quantity sold for each product, and ordered by the total sold in descending order. The query limits the output to show only the top-selling product.

Output:

product_name	total_sold
Laptop	5
Query-14: View Restock History for a Product

-- Select the transaction date and quantity from the Transactions table
SELECT t.transaction_date, t.quantity
-- Query the Transactions table using the alias 't'
FROM Transactions t
-- Filter for transactions related to the product with product_id 2
WHERE t.product_id = 2
-- Filter for only 'purchase' type transactions
AND t.transaction_type = 'purchase';
Explanation:

This query retrieves the transaction date and quantity of all purchase transactions for the product with a product_id of 2 from the Transactions table. It filters the results by the product ID and ensures that only purchases (transaction_type = 'purchase') are included in the output. This helps track the history of purchases made for that specific product.

Output:

transaction_date	quantity
2024-10-17	20
Query-15: List All Products Sold Today

-- Select the product name and quantity from the Products and Transactions tables
SELECT p.product_name, t.quantity
-- Join the Transactions table with the Products table using the product_id
FROM Transactions t
JOIN Products p ON t.product_id = p.product_id
-- Filter to only include sale transactions
WHERE t.transaction_type = 'sale'
-- Filter to only include transactions that occurred today
AND t.transaction_date = CURRENT_DATE;
Explanation:

This query retrieves the product name and the quantity sold for all sales transactions that occurred today (CURRENT_DATE). The query joins the Transactions table with the Products table using the product_id, ensuring that the product details are included in the results. The conditions filter the records to only include sales and exclude any transactions from other dates.

Output:

product_name	quantity
Laptop	5
Query-16: View Stock Levels for Multiple Products

-- Select the product name and quantity from the Products and Inventory tables
SELECT p.product_name, i.quantity
-- Join the Inventory table with the Products table using the product_id
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id
-- Filter to include only products with product_id 1 or 2
WHERE p.product_id IN (1, 2);
Explanation:

This query retrieves the product name and the quantity in inventory for products with product_id 1 or 2. It joins the Inventory and Products tables using the product_id to match the product information with its corresponding stock level. The WHERE clause ensures that only the two specified products (IDs 1 and 2) are included in the results.

Output:

product_name	quantity
Laptop	10
Desk Chair	20
Query-17: View Transactions by Transaction Type

-- Select the transaction date, product name, and quantity from the Transactions and Products tables
SELECT t.transaction_date, p.product_name, t.quantity
-- Join the Transactions table with the Products table using the product_id
FROM Transactions t
JOIN Products p ON t.product_id = p.product_id
-- Filter the results to only include transactions where the type is 'purchase'
WHERE t.transaction_type = 'purchase';
Explanation:

This query retrieves the transaction date, product name, and quantity of all transactions that represent purchases. It joins the Transactions and Products tables using the product_id to display the product details alongside the purchase transactions. The WHERE clause filters the results to show only the transactions where the transaction_type is marked as 'purchase'.

Output:

transaction_date	product_name	quantity
2024-10-17	Laptop	10
2024-10-17	Desk Chair	20
2024-10-17	Notebook	100
Query-18: List Products with No Stock

-- Select the product name from the Products table
SELECT p.product_name
-- Join the Inventory table with the Products table using the product_id
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id
-- Filter the results to only include products where the quantity in inventory is 0
WHERE i.quantity = 0;
Explanation:

This query retrieves the product names of all items that are currently out of stock, meaning their quantity in the Inventory table is 0. The Inventory and Products tables are joined using the product_id, allowing the query to show the product details for items with no available stock.

Output:

Output not generated for insufficient data
