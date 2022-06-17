CREATE DATABASE demo;
USE demo;

CREATE TABLE product
(id INT  ,
product_code VARCHAR(45),
product_name VARCHAR(45),
product_price DOUBLE,
product_amount INT,
product_description VARCHAR(45),
product_status BIT DEFAULT 1 );
INSERT INTO product (id, product_code, product_name, product_price, product_amount, product_description,product_status) 
VALUES 
('1', '001', 'iphone 13', 23000, 1, '99%', 1),
('2', '005', 'iphone 13', 23000, 1, '99%', 1),
('3', '002', 'samsung note 8', 23000, 1, '99%', 1),
('4', '003', 'iphone X', 13000, 5, '99%', 1),
('5', '004', 'samsung J7', 8000, 1, '99%', 1)
;

CREATE INDEX product_code_index ON product(product_code);
CREATE INDEX product_name_price_index ON product(product_name,product_price);
EXPLAIN SELECT * FROM product WHERE product_code = '004';


-- productCode, productName, productPrice, productStatus từ bảng product-- .

CREATE VIEW product_view  AS 