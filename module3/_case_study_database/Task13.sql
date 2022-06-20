USE furama;
-- 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).

SELECT dvdk.ma_dich_vu_di_kem,	dvdk.ten_dich_vu_di_kem, ifnull(sum(hdct.so_luong),0) AS sử_dụng_nhìu_nhất
FROM dich_vu_di_kem dvdk
JOIN hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
GROUP BY  dvdk.ma_dich_vu_di_kem
HAVING  sử_dụng_nhìu_nhất  >= 
ALL(SELECT ifnull(sum(hop_dong_chi_tiet.so_luong),0)  FROM dich_vu_di_kem
JOIN hop_dong_chi_tiet  ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
GROUP BY  hop_dong_chi_tiet.ma_dich_vu_di_kem
);