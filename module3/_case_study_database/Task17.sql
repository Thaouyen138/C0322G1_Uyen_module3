USE furama;
-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
UPDATE khach_hang SET  ma_loai_khach= 1 WHERE ma_loai_khach  = 2 AND ma_khach_hang IN(
SELECT hd.ma_khach_hang, sum(dv.chi_phi_thue + (hdct.so_luong * dvdk.gia)) AS tong_tien 
from dich_vu_di_kem dvdk 
JOIN hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem 
JOIN hop_dong hd ON hdct.ma_hop_dong = hd.ma_hop_dong
JOIN khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang 
JOIN dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
WHERE year(hd.ngay_lam_hop_dong) = 2021 GROUP BY hd.ma_khach_hang  HAVING tong_tien >=10000000
); 

