USE furama;
-- 8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
-- Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên.

-- cách 1!
 SELECT DISTINCT(ho_ten)  FROM khach_hang ;
 
 -- cách 2! 
 SELECT * FROM khach_hang GROUP BY (khach_hang.ho_ten);
 
 -- cách 3!
 SELECT ho_ten FROM khach_hang
 UNION 
 SELECT ho_ten FROM khach_hang ;
