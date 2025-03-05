-- CTE to calculate total orders and total spent for each month
WITH monthly_sales AS (
    SELECT 
        EXTRACT(MONTH FROM purchasedate) AS month_id,   -- Extracting the month number from purchase date
        TO_CHAR(purchasedate, 'MONTH') AS month_name,   -- Getting the full month name from purchase date
        COUNT(purchaseid) AS total_orders,              -- Counting the total number of orders (purchases)
        SUM(amount) AS total_spent                      -- Summing the total amount spent for each month
    FROM purchases
    GROUP BY month_id, month_name                      -- Grouping by month to aggregate sales and orders
    ORDER BY month_id ASC                              -- Sorting the results by month number
)

-- Selecting month name, total orders, and total spent from the CTE
SELECT 
    TRIM(month_name) AS month_name,  -- TRIM removes extra spaces that TO_CHAR may add to month names
    total_orders, 
    total_spent
FROM monthly_sales;
