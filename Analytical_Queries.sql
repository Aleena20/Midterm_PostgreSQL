-- Query 1: Revenue by product category and region (last 12 months)

SELECT
    category,
    region_name,
    SUM(quantity * unit_price) AS revenue
FROM vw_sales_summary
WHERE order_date >= CURRENT_DATE - INTERVAL '12 months'
GROUP BY category, region_name
ORDER BY revenue DESC;

-- Query 2: Top 5 customers by total purchase amount

SELECT
    customer_name,
    SUM(quantity * unit_price) AS total_spent
FROM vw_sales_summary
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- Query 3: Number of orders per month (last 6 months)

SELECT
    DATE_TRUNC('month', order_date) AS month,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL '6 months'
GROUP BY month
ORDER BY month;

