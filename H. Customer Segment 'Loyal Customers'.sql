-- Selecting customer details (name, age, gender, location)
SELECT name, 
       age, 
       gender, 
       location
FROM customers
WHERE customerid IN (
    -- Subquery to find customers who made a second purchase within 7 days of the first
    SELECT DISTINCT p1.customerid
    FROM purchases AS p1
    -- Joining the purchases table with itself to compare purchases of the same customer
    JOIN purchases AS p2
    ON p1.customerid = p2.customerid
    -- Ensuring we're comparing different purchases by the same customer
    AND p1.purchaseid != p2.purchaseid
    -- Ensuring the second purchase happened after the first
    AND p2.purchasedate > p1.purchasedate
    -- Ensuring the second purchase occurred within 7 days of the first purchase
    AND p2.purchasedate <= p1.purchasedate + INTERVAL '7' DAY
)
-- Optimization: Indexes on customerid and purchasedate in the purchases table 
-- and customerid in the customers table will speed up this query.
