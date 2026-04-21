-- 1) Total sales per customer
SELECT c.name, SUM(o.amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_sales DESC;

-- 2) Sales by country
SELECT c.country, SUM(o.amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.country
ORDER BY total_sales DESC;

-- 3) Top 2 customers by sales
SELECT c.name, SUM(o.amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_sales DESC
LIMIT 2;