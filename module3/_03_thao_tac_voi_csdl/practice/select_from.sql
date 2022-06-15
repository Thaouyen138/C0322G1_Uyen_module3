USE student_management;

SELECT * FROM student;

SELECT * FROM student WHERE `status`=true;

SELECT * FROM `subject` WHERE credit<10;

SELECT * FROM class;

SELECT s.student_id, s.student_name, c.class_name FROM student s join class c on s.class_id = c.class_id WHERE class_name="A1"; 	

SELECT s.student_id, s.student_name, sb.sub_name, m.mark 
FROM mark m JOIN `subject` sb
ON m.sub_id =sb.sub_id
JOIN student s
ON s.student_id=m.student_id
WHERE sb.sub_name ="CF";
