-- Task 6: Sales Trend Analysis Using Aggregations
-- Objective: Analyze monthly revenue and order volume trends.

-- 1. Monthly Revenue & Order Volume
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

-- 2. Identify Top 3 Months by Revenue
SELECT
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY month
ORDER BY total_revenue DESC
LIMIT 3;

-- 3. Average Monthly Revenue
SELECT
    ROUND(AVG(monthly_revenue),2) AS avg_monthly_revenue
FROM (
    SELECT EXTRACT(MONTH FROM order_date) AS month,
           SUM(amount) AS monthly_revenue
    FROM online_sales
    GROUP BY month
) AS sub;

-- 4. Filter: Sales trends from April to September
SELECT
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
WHERE EXTRACT(MONTH FROM order_date) BETWEEN 4 AND 9
GROUP BY month
ORDER BY month;
