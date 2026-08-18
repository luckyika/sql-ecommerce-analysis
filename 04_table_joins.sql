Fetch customer names along with their order details
SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    o.order_id,
    o.order_date,
    o.status
FROM customer c
INNER JOIN orders o ON c.customer_id = o.customer_id;

Identify potential customers who registered but haven't placed an order yet
SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    c.email,
    o.order_id
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

Retrieve product details along with their category names
SELECT 
    p.product_id,
    p.product_name,
    cat.category_name,
    p.price,
    p.stock_quantity
FROM products p
INNER JOIN categories cat ON p.category_id = cat.category_id;

SELECT 
    c.first_name, 
    c.last_name,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customer c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.first_name, c.last_name;
