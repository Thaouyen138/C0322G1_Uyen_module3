CREATE DATABASE quan_ly_khach_hang;
USE quan_ly_khach_hang;

CREATE TABLE customer
(c_id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(45)NOT NULL,
c_age INT
);

CREATE TABLE `order`
(o_id INT AUTO_INCREMENT PRIMARY KEY,
c_id INT,
FOREIGN KEY (c_id) REFERENCES customer(c_id),
o_date DATE,
o_total_price DOUBLE
);

CREATE TABLE product
(p_id INT AUTO_INCREMENT PRIMARY KEY,
p_name VARCHAR(45), 
p_price DOUBLE
);

CREATE TABLE order_detail
(
o_id INT,
p_id INT,
FOREIGN KEY (o_id) REFERENCES `order`(o_id),
FOREIGN KEY (p_id) REFERENCES product(p_id),
od_qty INT
);
