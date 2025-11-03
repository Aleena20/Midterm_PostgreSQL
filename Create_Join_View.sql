CREATE OR REPLACE VIEW vw_sales_summary AS
SELECT
    c.customer_name,
    r.region_name,
    p.category,
    p.sub_category,
    o.order_date,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) AS total_price
FROM customers c
JOIN regions r ON c.region_id = r.region_id
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;
