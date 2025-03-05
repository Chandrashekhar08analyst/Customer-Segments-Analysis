-- Category-Based Segmentation:

-- Identifying customers' favorite product categories

SELECT c.customerid, c.name, pr.category,
      COUNT(pu.purchaseid) AS total_orders,
      SUM(pu.amount) AS total_sales
FROM customers AS c
JOIN purchases AS pu
ON c.customerid = pu.customerid
JOIN products AS pr 
ON pr.category = pu.productcategory
GROUP BY c.customerid, c.name, pr.category
ORDER BY total_sales DESC;






