-- Top 5 Category
WITH top_category AS (
	SELECT pr.category,
	COUNT(pu.purchaseid) AS total_orders,
	SUM(pu.amount) AS total_spent
	FROM products AS pr
	JOIN purchases AS pu ON pr.category = pu.productcategory
	GROUP BY pr.category
)
SELECT category, total_orders, total_spent
FROM top_category
ORDER BY total_spent DESC
LIMIT 5;