-- 1. Dormant/Churned Customers
-- -- Identifying customers who haven't purchased in the last 6 months
WITH churn AS (
	SELECT c.customerid, c.name AS customername,
       MAX(p.purchasedate) AS last_purchase_date
FROM customers AS c
JOIN purchases AS p
ON c.customerid = p.customerid
GROUP BY c.customerid, c.name
HAVING MAX(p.purchasedate) < CURRENT_DATE - INTERVAL '6 MONTH'
ORDER BY MAX(p.purchasedate) ASC
)
SELECT customerid, customername, last_purchase_date
FROM churn;