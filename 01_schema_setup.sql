CREATE TABLE payments(
payment_id SERIAL PRIMARY KEY,
order_id INT NOT NULL,
payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
amount DECIMAL(10,2) NOT NULL,
payment_method VARCHAR(30) NOT NULL,
status VARCHAR(20) DEFAULT 'Completed',
FOREIGN KEY (order_id) REFERENCES orders(order_id)
)