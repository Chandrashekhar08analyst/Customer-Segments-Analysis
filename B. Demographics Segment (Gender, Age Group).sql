-- Demographics Segment (Gender, Age Group):

-- Segmenting customers by gender
SELECT c.gender, 
       COUNT(p.purchaseid) AS total_order,
       SUM(p.amount) AS total_spend
FROM customers AS c
JOIN purchases AS p
ON c.customerid = p.customerid
GROUP BY c.gender
ORDER BY SUM(p.amount) DESC;


-- 2. High-Value Customers 

-- Customer Segmentation Based on Age Group
SELECT 
	CASE 
	    WHEN c.age >= 45 THEN 'Senior'
	    WHEN c.age BETWEEN 30 AND 45 THEN 'Adult'
	    ELSE 'teenager'
	END AS age_group,
	COUNT(p.purchaseid) AS total_orders,
	SUM(p.amount) AS total_sales
FROM customers AS c
JOIN purchases AS p
ON c.customerid = p.customerid
GROUP BY age_group
ORDER BY total_sales DESC;








