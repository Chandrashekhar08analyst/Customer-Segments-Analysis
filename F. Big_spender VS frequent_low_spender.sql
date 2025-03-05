-- 1. Occasional Big Spenders

-- Finding occasional big spenders
SELECT 
    c.customerid, 
    c.name,
    COUNT(p.purchaseid) AS total_purchases,
    AVG(p.amount) AS avg_order_value,
    SUM(p.amount) AS total_spent
FROM 
    customers AS c
JOIN 
    purchases AS p
ON 
    c.customerid = p.customerid 
GROUP BY 
    c.customerid, c.name
HAVING 
    COUNT(p.purchaseid) <= 2 -- Occasional shoppers
    AND SUM(p.amount) > 900 -- High spenders
ORDER BY 
    SUM(p.amount) DESC;



-- 2. Frequent Shoppers with Low Spending
WITH low_spender AS (
	SELECT c.customerid, c.name AS customername,
	COUNT(p.purchaseid) AS total_order,
	SUM(p.amount) AS total_sales
	FROM customers AS c
	JOIN purchases AS p ON c.customerid = p.customerid
	GROUP BY c.customerid, c.name
	HAVING COUNT(p.purchaseid) >= 3 -- Occasional shoppers
    AND SUM(p.amount) <= 200 -- High spenders
)
SELECT customerid, customername
FROM low_spender 
ORDER BY total_order DESC;


