use furama;
-- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống,
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.

SELECT nv.ma_nhan_vien as id, nv.ho_ten, nv.email, nv.so_dien_thoai ,nv.ngay_sinh , nv.dia_chi FROM nhan_vien nv
UNION 
SELECT kh.ma_khach_hang as id, kh.ho_ten, kh.email, kh.so_dien_thoai ,kh.ngay_sinh , kh.dia_chi FROM khach_hang kh;