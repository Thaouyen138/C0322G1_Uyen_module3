USE furama;

-- Task 3: Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
SELECT * FROM khach_hang kh WHERE (year(curdate())- year(kh.ngay_sinh) BETWEEN 18 AND 50 ) AND (kh.dia_chi LIKE "%đà nẵng%") OR (kh.dia_chi LIKE "%quảng trị%");
