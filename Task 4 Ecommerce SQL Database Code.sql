
-- Ecommerce SQL Database Script
-- Create Tables

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50),
    signup_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert Data
INSERT INTO customers VALUES
(1, 'Alice Johnson', 'Canada', '2023-01-01'),
(2, 'Bob Smith', 'Germany', '2023-02-15'),
(3, 'Charlie Brown', 'Germany', '2023-04-01'),
(4, 'Diana Green', 'UK', '2023-05-16'),
(5, 'Ethan White', 'Canada', '2023-06-30'),
(6, 'Fiona Black', 'USA', '2023-08-14'),
(7, 'George Hill', 'India', '2023-09-28'),
(8, 'Hannah Lee', 'USA', '2023-11-12'),
(9, 'Ian Scott', 'Germany', '2023-12-27'),
(10, 'Julia Adams', 'Germany', '2024-02-10');

INSERT INTO products VALUES
(1, 'Smartphone', 'Sports', 118),
(2, 'Laptop', 'Fashion', 624),
(3, 'Sneakers', 'Beauty', 217),
(4, 'Coffee Maker', 'Electronics', 243),
(5, 'Headphones', 'Sports', 827),
(6, 'Jacket', 'Sports', 148),
(7, 'Tennis Racket', 'Sports', 287),
(8, 'Sofa', 'Home', 235),
(9, 'Lipstick', 'Beauty', 185),
(10, 'Smartwatch', 'Fashion', 744);

INSERT INTO orders VALUES
(1, 8, '2024-09-18', 274),
(2, 7, '2024-09-23', 1119),
(3, 6, '2024-05-24', 1296),
(4, 9, '2024-10-03', 663),
(5, 4, '2024-09-06', 1638),
(6, 8, '2024-04-12', 936),
(7, 10, '2024-02-05', 1827),
(8, 2, '2024-05-24', 212),
(9, 1, '2024-03-31', 117),
(10, 8, '2024-01-26', 203),
(11, 7, '2024-03-19', 978),
(12, 9, '2024-03-26', 530),
(13, 8, '2024-02-01', 1797),
(14, 1, '2024-02-21', 1275),
(15, 7, '2024-04-09', 1478);

INSERT INTO order_items VALUES
(1, 1, 2, 1),
(2, 1, 10, 3),
(3, 1, 3, 5),
(4, 2, 5, 1),
(5, 2, 9, 1),
(6, 2, 8, 3),
(7, 3, 4, 4),
(8, 4, 7, 4),
(9, 5, 9, 2),
(10, 6, 1, 3),
(11, 6, 4, 1),
(12, 7, 3, 5),
(13, 7, 7, 4),
(14, 7, 8, 2),
(15, 8, 8, 2),
(16, 8, 1, 3),
(17, 9, 10, 5),
(18, 9, 5, 4),
(19, 10, 10, 1),
(20, 11, 5, 2),
(21, 11, 4, 1),
(22, 11, 6, 4),
(23, 12, 4, 2),
(24, 12, 3, 3),
(25, 12, 10, 5),
(26, 13, 10, 5),
(27, 13, 6, 1),
(28, 14, 10, 2),
(29, 14, 4, 2),
(30, 14, 5, 5),
(31, 15, 4, 2);

