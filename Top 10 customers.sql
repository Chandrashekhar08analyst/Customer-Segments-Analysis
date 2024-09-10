-- Top 10 customers 
WITH top_customers AS (
	SELECT c.customerid , c.name AS customername,
    COUNT(p.purchaseid) AS total_orders ,
	SUM(p.amount) AS total_spent
	FROM customers AS c
	JOIN purchases AS p ON c.customerid = p.customerid
	GROUP BY c.customerid , c.name
)
SELECT customerid, customername, total_orders, total_spent
FROM top_customers
ORDER BY total_spent DESC
LIMIT 10;