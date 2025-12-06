-- Project00007 inserts.sql

-- customers
INSERT INTO customers (customer_id, name, email, city) VALUES
(1, 'Alice Johnson', 'alice@example.com', 'Pittsburgh'),
(2, 'Bob Smith', 'bob@example.com', 'Philadelphia'),
(3, 'Carol White', 'carol@example.com', 'Cleveland');

-- products
INSERT INTO products (product_id, product_name, price) VALUES
(101, 'Laptop', 1200.00),
(102, 'Smartphone', 800.00),
(103, 'Headphones', 150.00),
(104, 'Monitor', 300.00);

-- orders
INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1001, 1, '2025-12-01'),
(1002, 2, '2025-12-02'),
(1003, 1, '2025-12-03'),
(1004, 3, '2025-12-04');

-- order_details
INSERT INTO order_details (order_detail_id, order_id, product_id, quantity) VALUES
(5001, 1001, 101, 1),
(5002, 1001, 103, 2),
(5003, 1002, 102, 1),
(5004, 1003, 104, 1),
(5005, 1004, 103, 3);