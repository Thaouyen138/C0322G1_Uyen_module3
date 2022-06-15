USE student_management;

-- Hiển thị số lượng sinh viên ở từng nơi
SELECT count(student_id) AS "số lượng sinh viên" ,address  FROM student  GROUP BY student_id;


-- Tính điểm trung bình các môn học của mỗi học viên
SELECT s.student_name, avg(m.mark) AS "điểm trung bình" FROM student s
JOIN mark m  ON s.student_id = m.student_id GROUP BY (s.student_id);


-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
SELECT s.student_name , AVG( m.mark) AS "điểm trung bình"  FROM student s JOIN mark m  ON s.student_id = m.student_id GROUP BY (s.student_id) HAVING "điểm trung bình" >15;


-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
SELECT s.student_name , AVG( m.mark) AS "điểm trung bình"  FROM student s 
JOIN mark m  ON s.student_id = m.student_id GROUP BY (s.student_id) HAVING max("điểm trung bình" );
