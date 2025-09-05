USE salesDB;
-- The first query was to get employees info and office code using INNER JOIN
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    o.officeCode
FROM employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode;

-- On the second query the task was to get product details using LEFT JOIN with productlines
SELECT 
    p.productName, 
    p.productVendor, 
    pl.productLine
FROM products p
LEFT JOIN productlines pl
ON p.productLine = pl.productLine;

-- Lastly I was to retrieve first 10 orders using RIGHT JOIN with customers
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM customers c
RIGHT JOIN orders o
ON c.customerNumber = o.customerNumber
LIMIT 10;


