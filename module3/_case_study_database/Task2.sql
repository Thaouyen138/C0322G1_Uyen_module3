USE furama;
-- Task 2:Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và
-- có tối đa 15 kí tự. 
SELECT * from nhan_vien WHERE ( ho_ten LIKE "H%" )OR (ho_ten LIKE "T%") OR( ho_ten LIKE "K%") AND char_length(ho_ten)=15;
