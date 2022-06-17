CREATE DATABASE demo;
USE demo;
SET SQL_SAFE_UPDATES=0;

CREATE TABLE product
(id INT  AUTO_INCREMENT PRIMARY KEY,
product_code VARCHAR(45),
product_name VARCHAR(45),
product_price DOUBLE,
product_amount INT,
product_description VARCHAR(45),
product_status BIT DEFAULT 1 );
INSERT INTO product ( product_code, product_name, product_price, product_amount, product_description,product_status) 
VALUES 
('001', 'iphone 13', 23000, 1, '99%', 1),
('005', 'iphone 13', 23000, 1, '99%', 1),
('002', 'samsung note 8', 23000, 1, '99%', 1),
('003', 'iphone X', 13000, 5, '99%', 1),
('004', 'samsung J7', 8000, 1, '99%', 1)
;

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
CREATE INDEX product_code_index ON product(product_code);
-- ----------------------------------------------------------------------------------------------------------------
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
CREATE INDEX product_name_price_index ON product(product_name,product_price);

-- ----------------------------------------------------------------------------------------------------------------
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
EXPLAIN SELECT * FROM product WHERE product_code = '004';

-- ---------------------------------------------------------------------------------------------------------------
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW product_view  AS
 SELECT p.product_code ,p.product_name, p.product_price, p.product_status
 FROM product p;
 
-- -------------------------------------------------------------------------------------------------------------
 -- Tiến hành sửa đổi view
UPDATE product_view SET product_name ="samsung galaxy s8" WHERE product_code ="004";
 
-- -------------------------------------------------------------------------------------------------------------
-- Tiến hành xoá view
DROP VIEW product_view;


-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
-- --------------------------------------------------------------------------------------------------------------
delimiter // 
CREATE PROCEDURE  select_procedure(in product_code VARCHAR(45))
 BEGIN 
 SELECT * FROM product WHERE `name`=product_code;
 END 
 // DELIMITER ;
  CALL  select_procedure("001");
  
  
-- -------------------------------------------------------------------------------------------------------------------------
-- Tạo store procedure thêm một sản phẩm mới

delimiter //
CREATE PROCEDURE insert_procedure(in product_code varchar(45),
product_name VARCHAR(50),
 product_price DOUBLE,
 product_amount INT,
 product_description VARCHAR(50),
 product_status bit)
 BEGIN 
 INSERT INTO product(product_code,product_name,product_price,product_amount,product_description,product_status)
 VALUES(product_code,product_name,product_price,product_amount,product_description,product_status);
 end
// delimiter ;

CALL insert_procedure ("006", "samsung", 12, 1, "new", 1);
 
 
 -- ---------------------------------------------------------------------------------------------------------------------------
 -- Tạo store procedure sửa thông tin sản phẩm theo id
 delimiter //
CREATE PROCEDURE update_procedure( in product_id int, `code` varchar(45),
`name` VARCHAR(50),
price DOUBLE,
amount INT,
`description` VARCHAR(50),
 `status` bit)
 BEGIN 
 UPDATE product SET  product_code = `code` ,
					 product_name=`name`,
					 product_price=price,
					 product_amount=amount, 
					 product_description= `description`, 
					 product_status= `status`
 WHERE id= product_id;
 END //
 delimiter ;
 
 CALL update_procedure( 4,"006","haongu" , 0, 1, "new", 1);
 
  
-- ---------------------------------------------------------------------------------------------------------------------------
-- Tạo store procedure xoá sản phẩm theo id
delimiter //
CREATE PROCEDURE delete_procedure( in product_id int)
 BEGIN 
 
 DELETE  from product 
 WHERE id= product_id;
 END //
 delimiter ;
 
CALL delete_procedure( 4);
 
 

 
 
 
 
 
 
-- DELIMITER //
-- CREATE PROCEDURE product_crud
-- (pAction VARCHAR(10), in product_code INT,
-- product_name VARCHAR(50),
--  product_price DOUBLE,
--  product_amount INT,
--  product_description VARCHAR(50),
--  product_status VARCHAR(50))

-- BEGIN
--     -- SELECT
--     IF pAction ="SELECT" THEN
--         SELECT *
--         FROM product;
--      END IF;
--  
--     -- INSERT
--     IF pAction ="INSERT" THEN
--     INSERT INTO product(product_code,product_name,product_price,product_amount,product_description,product_status)
--     VALUES(product_code,product_name,product_price,product_amount,product_description,product_status);
--     END IF;

--     -- UPDATE
--     IF pAction ="UPDATE" THEN
--         UPDATE product
--         SET  product_code=productCode , product_name=productName
--         WHERE product_code = productCode;
--     END IF;
--      
--     -- DELETE
--     IF pAction ="DELETE" THEN
--         DELETE FROM product
--         WHERE product_code = productCode;
--     END IF;
-- END 
-- // delimiter ;

--  call product_crud("select", null, null, null, null, null, null);
--  call product_crud("insert", null, null, null, null, null, null);
--  call product_crud("update", null,null,null,null,null,null,null);
--  call product_crud("delete", null, null, null, null, null, null);
--  