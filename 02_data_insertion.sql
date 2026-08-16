-- 1. Categories (დამოუკიდებელი)
INSERT INTO categories (category_name) VALUES 
('Electronics'),
('Home Appliances'),
('Sportswear');

-- 2. Customer (დამოუკიდებელი)
INSERT INTO customer (first_name, last_name, email, registration_date, city) VALUES
('გიორგი', 'ბერიძე', 'giorgi.b@example.com', '2026-01-15', 'Tbilisi'),
('ნინო', 'კაპანაძე', 'nino.k@example.com', '2026-02-01', 'Kutaisi'),
('Alex', 'Smith', 'alex.smith@example.com', '2026-02-10', 'New York'),
('Anna', 'Müller', 'anna.m@example.com', '2026-03-05', 'Berlin'),
('დავით', 'მაისურაძე', 'dato.m@example.com', '2026-03-12', 'Batumi'),
('ლუკა', 'გიორგაძე', 'luka.g@example.com', '2026-03-20', 'Tbilisi'),
('Elena', 'Russo', 'elena.r@example.com', '2026-04-02', 'Rome');

-- 3. Products (დამოკიდებულია categories-ზე)
INSERT INTO products (product_name, category_id, price, stock_quantity, created_at) VALUES
('Laptop Pro 15', 1, 1200.00, 15, '2026-01-10'),
('Wireless Mouse', 1, 25.50, 100, '2026-01-12'),
('Mechanical Keyboard', 1, 85.00, 40, '2026-01-15'),
('Coffee Maker', 2, 150.00, 20, '2026-01-20'),
('Running Shoes', 3, 95.00, 50, '2026-02-01'),
('Smart Watch', 1, 210.00, 30, '2026-02-10'),
('Desk Lamp', 2, 45.00, 60, '2026-02-15');

-- 4. Orders (დამოკიდებულია customer-ზე)
INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2026-03-15', 'Completed'),
(2, '2026-03-16', 'Completed'),
(3, '2026-03-17', 'Pending'),
(1, '2026-03-18', 'Completed'),
(4, '2026-03-19', 'Cancelled'),
(5, '2026-03-22', 'Completed'),
(6, '2026-03-25', 'Completed');

-- 5. Order Items (დამოკიდებულია orders-ზე და products-ზე)
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1200.00),
(1, 2, 2, 25.50),
(2, 4, 1, 150.00),
(3, 3, 1, 85.00),
(4, 5, 2, 95.00),
(5, 1, 1, 1200.00),
(6, 6, 1, 210.00),
(7, 7, 2, 45.00);

-- 6. Payments (დამოკიდებულია orders-ზე)
INSERT INTO payments (order_id, amount, payment_method, status) VALUES
(1, 1251.00, 'Credit Card', 'Completed'),
(2, 150.00, 'PayPal', 'Completed'),
(4, 190.00, 'Credit Card', 'Completed'),
(6, 210.00, 'Bank Transfer', 'Completed'),
(7, 90.00, 'Credit Card', 'Completed');
