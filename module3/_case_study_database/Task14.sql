USE furama;
-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. Thông tin hiển thị bao gồm ma_hop_dong, 
-- ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (được tính dựa trên việc count các ma_dich_vu_di_kem).
 
SELECT hd.ma_hop_dong, ldv.ten_loai_dich_vu, dvdk.ten_dich_vu_di_kem, count(dvdk.ma_dich_vu_di_kem)AS 'số lần sử dụng' 
FROM hop_dong_chi_tiet hdct 
JOIN dich_vu_di_kem  dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
JOIN hop_dong  hd ON hd.ma_hop_dong = hdct.ma_hop_dong
JOIN dich_vu dv ON dv.ma_dich_vu = hd.ma_hop_dong
JOIN loai_dich_vu  ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
GROUP BY dvdk.ma_dich_vu_di_kem HAVING count('số lần sử dụng') = 1;