-- Monthly Sales VS orders
WITH monthly_sales AS (
	SELECT EXTRACT(MONTH FROM purchasedate) AS month, 
      COUNT(purchaseid) AS total_orders,
      SUM(amount) AS total_spent
FROM purchases 
GROUP BY month
ORDER BY month ASC
)
SELECT CASE 
	WHEN month = 1 THEN 'January'
	WHEN month = 2 THEN 'February'
	WHEN month = 3 THEN 'March'
	WHEN month = 4 THEN 'April'
	WHEN month = 5 THEN 'May'
	WHEN month = 6 THEN 'June'
	WHEN month = 7 THEN 'July'
	WHEN month = 8 THEN 'August'
	WHEN month = 9 THEN 'September'
	WHEN month = 10 THEN 'October'
	WHEN month = 11 THEN 'November'
	ELSE 'December'
	END AS month_name,
	total_orders, total_spent
FROM monthly_sales;