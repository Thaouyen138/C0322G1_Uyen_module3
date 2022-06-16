USE quan_ly_khach_hang;

INSERT INTO  customer
(c_id, c_name,c_age)
VALUES 
(1,"minh quan", 10),
(2,"ngoc oanh", 20),
(3,"hong ha", 50);

INSERT INTO `order`
(o_id, c_id, o_date, o_total_price)
VALUES
(1,1, "2006-03-21", NULL),
(2,2,"2006-03-23",NULL),
(3,1,"2006-03-16",NULL);

INSERT INTO product
(p_id ,p_name, p_price)
VALUES 
(1,"may giat", 3),
(2,"tu lanh" ,5),
(3,"dieu hoa",7), 
(4, "quat" ,1), 
(5,"bep dien",2);

INSERT INTO order_detail
(o_id,p_id, od_qty)
VALUES
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

SELECT o_id, o_date,o_total_price FROM `order`;

SELECT c.*, p.p_name  FROM  order_detail od 
JOIN product p ON p.p_id =od.p_id
JOIN `order` o ON od.o_id=o.o_id
JOIN customer c ON o.c_id=c.c_id ;

SELECT  *  FROM  customer c
WHERE c.c_id NOT IN (SELECT c.c_id FROM `order`);

SELECT   o.o_id, o_date, p.p_name AS "tên sản phẩm", sum(p.p_price * od.od_qty) AS "giá bán từng loại" 
FROM order_detail od 
JOIN product p ON p.p_id = od.p_id
JOIN `order` o ON o.o_id = od.o_id GROUP BY (o_id);