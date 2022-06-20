USE furama;
-- 10.	Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm.
--  Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem
--  (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).
SELECT hd.ma_hop_dong, hd.ngay_lam_hop_dong , hd.ngay_ket_thuc, hd.tien_dat_coc, count(dvdk.ma_dich_vu_di_kem) As "số lượng"
FROM hop_dong_chi_tiet hdct 
JOIN hop_dong hd ON hdct.ma_hop_dong = hd.ma_hop_dong
JOIN dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY (hdct.ma_dich_vu_di_kem);
