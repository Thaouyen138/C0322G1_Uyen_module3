USE furama;
-- 12.	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), ten_dich_vu, 
-- so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của tất cả các dịch vụ đã từng 
-- được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.

SELECT hd.ma_hop_dong , nv.ho_ten, kh.ho_ten, kh.so_dien_thoai, dv.ten_dich_vu, ifnull(sum(hdct.so_luong),0) as "số lượng" , hd.tien_dat_coc 
FROM hop_dong hd 
JOIN nhan_vien nv on nv.ma_nhan_vien = hd.ma_nhan_vien 
JOIN khach_hang kh ON kh.ma_khach_hang = hd.ma_khach_hang
JOIN dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
left JOIN hop_dong_chi_tiet hdct ON hdct.ma_hop_dong= hd.ma_hop_dong
WHERE hd.ma_dich_vu  IN (SELECT ma_dich_vu FROM hop_dong WHERE   (month(ngay_lam_hop_dong) BETWEEN 9 AND 12) AND year(ngay_lam_hop_dong) = 2020)
 AND hd.ma_dich_vu NOT IN (SELECT ma_dich_vu FROM hop_dong WHERE (month(ngay_lam_hop_dong)BETWEEN 1 AND 6) AND year(ngay_lam_hop_dong) = 2021 )
GROUP BY hd.ma_hop_dong; 