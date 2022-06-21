USE furama;
-- Task 2:Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và
-- có tối đa 15 kí tự. 
SELECT * from nhan_vien WHERE ( SUBSTRING_INDEX(ho_ten, ' ', -1) LIKE "H%" )OR (SUBSTRING_INDEX(ho_ten, ' ', -1) LIKE "T%") OR( SUBSTRING_INDEX(ho_ten, ' ', -1) LIKE "K%") AND char_length(ho_ten)=15;

