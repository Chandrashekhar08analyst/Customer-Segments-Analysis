--  Behavior Segment (RFM Analysis)

-- -- Performing RFM segmentation
WITH rfm AS (
	SELECT c.customerid, c.name,  
	MAX(p.purchasedate) AS last_purchase_date,
	COUNT(p.purchaseid) AS frequency,
	SUM(p.amount) AS monetary_value
FROM customers AS c
	JOIN purchases AS p
	ON c.customerid = p.customerid
	GROUP BY c.customerid, c.name
)
SELECT customerid , name ,
       EXTRACT(DAY FROM (NOW() - last_purchase_date)) AS recency,
       frequency, monetary_value
FROM rfm
ORDER BY monetary_value DESC;