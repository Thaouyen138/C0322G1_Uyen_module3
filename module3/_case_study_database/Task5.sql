USE furama;
-- 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
-- (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá,
--  với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. 
-- (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
 SELECT kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong,hd.ngay_ket_thuc, 
 sum(dv.chi_phi_thue + (hdct.so_luong * dvdk.gia)) AS "tổng tiền" FROM hop_dong_chi_tiet hdct 
 JOIN dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
 JOIN hop_dong hd ON hd.ma_hop_dong = hdct.ma_hop_dong
 JOIN dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
 JOIN khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
 JOIN loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
 GROUP BY ma_khach_hang;
