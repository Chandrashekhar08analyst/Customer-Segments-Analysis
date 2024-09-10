-- 1. Customer Lifetime Value (CLV) Calculation

-- Calculate Customer Lifetime Value (CLV)
WITH CLV AS (
	SELECT c.customerid, c.name AS customername, 
	ROUND(COUNT(p.purchaseid) * AVG(p.amount),2) AS lifetime_value
	FROM customers AS c
	JOIN purchases AS p ON c.customerid = p.customerid
	GROUP BY c.customerid, c.name
)
SELECT customerid , customername, lifetime_value
FROM CLV
ORDER BY lifetime_value DESC
LIMIT 10;



