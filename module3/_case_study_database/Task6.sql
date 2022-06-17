USE furama;
-- 6.	Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu 
-- --của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).

SELECT dv.ma_dich_vu , dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue , ldv.ten_loai_dich_vu ,hd.ngay_lam_hop_dong
FROM hop_dong hd
JOIN dich_vu dv ON hd.ma_dich_vu =dv.ma_dich_vu
JOIN loai_dich_vu ldv ON dv.ma_loai_dich_vu =ldv.ma_loai_dich_vu
 WHERE ngay_lam_hop_dong BETWEEN '2021-01-01' AND  '2021-03-31';
  ;
  
  -- Cách 2
  SELECT dv.ma_dich_vu , dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue , ldv.ten_loai_dich_vu ,hd.ngay_lam_hop_dong
FROM hop_dong hd
JOIN dich_vu dv ON hd.ma_dich_vu =dv.ma_dich_vu
JOIN loai_dich_vu ldv ON dv.ma_loai_dich_vu =ldv.ma_loai_dich_vu
 WHERE month(ngay_lam_hop_dong )BETWEEN 1 AND 3;
