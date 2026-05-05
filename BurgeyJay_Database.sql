CREATE DATABASE IF NOT EXISTS burgeyjay;
USE burgeyjay;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    role ENUM('admin', 'cashier') NOT NULL DEFAULT 'cashier',
    is_active TINYINT(1) DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL UNIQUE,
    price DECIMAL(10,2) NOT NULL,
    status ENUM('Available', 'Not Available', 'Archived') DEFAULT 'Available',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    cashier_id INT NOT NULL,
    cashier_name VARCHAR(100) NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    discount DECIMAL(10,2) DEFAULT 0,
    final_amount DECIMAL(10,2) NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cashier_id) REFERENCES users(user_id) ON DELETE RESTRICT
);

CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    price_per_unit DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE RESTRICT
);

INSERT INTO users (username, password, full_name, role) 
VALUES ('admin', '@101402Akamaru01', 'System Administrator', 'admin');

INSERT INTO products (product_name, price, status) VALUES
('BACONARIAN', 150.00, 'Available'),
('CHEESE&BUN', 80.00, 'Available'),
('CHEEZ DOG', 50.00, 'Available'),
('EGG CHAMP', 130.00, 'Available'),
('MEAT BURGER', 60.00, 'Available'),
('TRIPLE DECKER', 230.00, 'Available'),
('HAWAIIAN BLAST', 130.00, 'Available'),
('MAGNUM SLAM', 200.00, 'Available'),
('CHOCO FUDGE SHAKE', 115.00, 'Available'),
('MANGO GRAHAM SHAKE', 120.00, 'Available'),
('FRIES LARGE', 100.00, 'Available'),
('FRIES REGULAR', 50.00, 'Available'),
('COMBO 1', 100.00, 'Available'),
('COMBO 2', 130.00, 'Available'),
('COMBO 3', 170.00, 'Available'),
('COMBO 4', 220.00, 'Available'),
('S1', 69.00, 'Available'),
('S2', 85.00, 'Available'),
('S3', 99.00, 'Available'),
('S4', 120.00, 'Available'),
('S5', 160.00, 'Available');