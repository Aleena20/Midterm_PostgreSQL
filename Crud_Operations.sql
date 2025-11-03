-- Create (Add a new customer):

INSERT INTO customers (customer_name, region_id, segment)
VALUES ('David Green', 4, 'Consumer');

-- Read (Select sales summary for the East region):

SELECT * FROM vw_sales_summary
WHERE region_name = 'East';

-- Update (Update price of a product):

UPDATE products
SET price = 160.00
WHERE product_name = 'Office Chair';

-- Delete (Delete an order safely):

DELETE FROM orders
WHERE order_id = 2
AND order_date < CURRENT_DATE - INTERVAL '1 year';

