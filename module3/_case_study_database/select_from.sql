USE furama;

-- Task 4: Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần.
--  Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
SELECT  kh.ma_khach_hang, kh.ho_ten ,count(hd.ma_hop_dong) AS "số lần đặt phòng", lk.ten_loai_khach FROM hop_dong hd 
JOIN khach_hang kh ON hd.ma_khach_hang=kh.ma_khach_hang
JOIN loai_khach lk ON kh.ma_loai_khach=lk.ma_loai_khach
WHERE lk.ten_loai_khach = "Diamond"
GROUP BY(ma_khach_hang) ORDER BY "số lần đặt phòng";
