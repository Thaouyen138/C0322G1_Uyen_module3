Use furama;
-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
UPDATE dich_vu_di_kem SET gia = gia * 2
WHERE  ma_dich_vu_di_kem IN
(SELECT ma_dich_vu_di_kem  FROM hop_dong_chi_tiet hdct
 join hop_dong hd ON hd.ma_hop_dong=hdct.ma_hop_dong where year(hd.ngay_lam_hop_dong) =2020
 GROUP BY ma_dich_vu_di_kem HAVING count(ma_dich_vu_di_kem)  >= 3 );