-- Regions
INSERT INTO regions (region_name) VALUES
('East'), ('West'), ('Central'), ('South');

-- Customers
INSERT INTO customers (customer_name, region_id, segment) VALUES
('Alice Johnson', 1, 'Consumer'),
('Bob Smith', 2, 'Corporate'),
('Cathy Lee', 3, 'Home Office');

-- Products
INSERT INTO products (product_name, category, sub_category, price) VALUES
('Office Chair', 'Furniture', 'Chairs', 150.00),
('Desk Lamp', 'Furniture', 'Accessories', 45.00),
('Printer Paper', 'Office Supplies', 'Paper', 12.50),
('Stapler', 'Office Supplies', 'Binders', 8.00);

-- Orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2024-10-10', 195.00),
(2, '2024-11-05', 20.00),
(3, '2024-11-15', 170.00);

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 150.00),
(1, 2, 1, 45.00),
(2, 4, 2, 10.00),
(3, 3, 10, 12.50);
