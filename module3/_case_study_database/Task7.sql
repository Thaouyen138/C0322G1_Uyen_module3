USE furama;
/*Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, 
ten_loai_dich_vu của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020
 nhưng chưa từng được khách hàng đặt phòng trong năm 2021. 
 */
 
SELECT hd.ma_hop_dong, dv.ma_dich_vu , dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue ,dv.so_nguoi_toi_da, ldv.ten_loai_dich_vu ,hd.ngay_lam_hop_dong
FROM hop_dong hd
JOIN dich_vu dv ON hd.ma_dich_vu =dv.ma_dich_vu
JOIN loai_dich_vu ldv ON dv.ma_loai_dich_vu =ldv.ma_loai_dich_vu WHERE year(hd.ngay_lam_hop_dong) = 2020
AND dv.ma_dich_vu NOT IN (SELECT hd.ma_dich_vu FROM hop_dong hd WHERE year(hd.ngay_lam_hop_dong)=2021)
GROUP BY (dv.ma_dich_vu);
 