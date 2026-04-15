CREATE DATABASE cus_ord;
USE cus_ord;

CREATE TABLE customer (
	customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR (50) NOT NULL,
    customer_email VARCHAR (100) NOT NULL UNIQUE,
    customer_phone_number VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE orders (
	orders_id INT PRIMARY KEY AUTO_INCREMENT,
	orders_date DATE DEFAULT (current_date()),
	orders_total INT NOT NULL,
    customer_id INT AUTO_INCREMENT,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);