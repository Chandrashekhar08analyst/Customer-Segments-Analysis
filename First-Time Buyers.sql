-- 2. First-Time Buyers:

-- Identifying first-time buyers
WITH first_time_buyers AS (
SELECT 
    c.customerid,
    c.name AS customername,
    MIN(p.purchasedate) AS first_purchase_date,
    SUM(p.amount) AS total_spent
FROM 
    customers AS c
JOIN 
    purchases AS p ON c.customerid = p.customerid
GROUP BY 
    c.customerid, c.name
HAVING 
    COUNT(p.purchaseid) = 1 -- First-time buyers
ORDER BY 
    first_purchase_date DESC
)
SELECT customerid, customername, first_purchase_date, total_spent
FROM first_time_buyers;