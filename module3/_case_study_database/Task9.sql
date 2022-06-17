USE furama;
-- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 
-- thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
 
SELECT month(hd.ngay_lam_hop_dong) AS thang, count(hd.ma_khach_hang) as "số lượng khách đặt phòng" FROM hop_dong hd 
JOIN khach_hang kh ON kh.ma_khach_hang = hd.ma_hop_dong  
GROUP BY (hd.ma_khach_hang);