USE student_management;


-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
 SELECT * FROM `subject` WHERE credit = (SELECT max(credit)  FROM `subject`);
 
 
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT s.*  FROM `subject` s JOIN mark m ON s.sub_id = m.sub_id
WHERE m.mark = (SELECT max(mark) from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT s.* , AVG(m.mark) FROM mark m
JOIN student s ON s.student_id= m.student_id GROUP BY (s.student_id) ORDER BY mark DESC;