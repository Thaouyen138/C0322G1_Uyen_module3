use furama;
-- 11.	Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” 
-- và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.

SELECT dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, dvdk.gia, dvdk.don_vi, dvdk.trang_thai, kh.ho_ten, lk.ten_loai_khach, kh.dia_chi FROM dich_vu_di_kem dvdk
JOIN hop_dong_chi_tiet hdct ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
JOIN hop_dong hd ON hd.ma_hop_dong = hdct.ma_hop_dong
JOIN dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
JOIN khach_hang kh ON kh.ma_khach_hang = hd.ma_khach_hang
JOIN loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach 
WHERE lk.ten_loai_khach = 'Diamond' AND (kh.dia_chi = 'Vinh' OR kh.dia_chi = 'Quảng Ngãi');
