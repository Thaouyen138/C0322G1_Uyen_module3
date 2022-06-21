USE furama; 
-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
SET SQL_SAFE_UPDATES = 0;
DELETE FROM nhan_vien nv WHERE nv.ma_nhan_vien  
not in ( SELECT hd.ma_nhan_vien from hop_dong hd WHERE year(hd.ngay_lam_hop_dong) BETWEEN 2019 AND 2021);