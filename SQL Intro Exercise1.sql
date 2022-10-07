-- Using the bestbuy database: Copy the SQL Comments below 
-- and paste them into your MySql Workbench.

-- find all products
SELECT *
FROM bestbuy.products;

-- find all products that cost $1400
SELECT *
FROM bestbuy.products 
WHERE Price = 1400;

-- find all products that cost $11.99 or $13.99
SELECT *
From bestbuy.products
Where Price = 11.99 OR Price = 13.99; 

-- find all products that do NOT cost 11.99 - using NOT
SELECT *
FROM bestbuy.products
WHERE price != 11.99;

-- find all products and sort them by price from greatest to least
SELECT *
FROM bestbuy.products
ORDER BY price DESC;

-- find all employees who don't have a middle initial
SELECT *
FROM bestbuy.employees
WHERE MiddleInitial IS NULL;

-- find distinct product prices
SELECT DISTINCT(Prices)
FROM bestbuy.products;

-- find all employees whose first name starts with the letter ‘j’
SELECT *
FROM bestbuy.employees
WHERE FirstName = "j%";

-- find all Macbooks
SELECT *
FROM bestbuy.products
WHERE Name = "Macbook";

-- find all products that are on sale
SELECT *
FROM bestbuy.products
WHERE OnSale = true;

-- find the average price of all products
SELECT AVG(Price)
FROM bestbuy.products;

-- find all Geek Squad employees who don't have a middle initial
SELECT *
FROM bestbuy.employees
WHERE MiddleInitial IS NULL AND Title = "Geek Squad";

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT *
FROM bestbuy.products
WHERE StockLevel BETWEEN 500 AND 1200
ORDER BY Price, StockLevel;

-- Once finished, create a new folder in your repo, save the SQL file there, stage, commit, and push up to GitHub