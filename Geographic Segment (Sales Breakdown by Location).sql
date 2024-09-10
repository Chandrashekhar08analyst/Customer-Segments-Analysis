-- Geographic Segment (Sales Breakdown by Location)

SELECT c.location,
       COUNT(p.purchaseid) AS total_order,
       SUM(p.amount) AS total_spend
FROM customers AS c
JOIN purchases AS p
ON c.customerid = p.customerid
GROUP BY c.location
ORDER BY SUM(p.amount) DESC;