USE student_management;

SELECT * FROM student WHERE student_name LIKE "h%";
 

SELECT * FROM student s JOIN class c ON 
s.class_id = c.class_id
WHERE month(start_date) =12;
 
SELECT * FROM subject WHERE credit BETWEEN 5 AND 6;

SELECT * FROM student s JOIN class c ON s.class_id= c.class_id;

SELECT * FROM class;
SELECT * FROM student;
SELECT * FROM mark;
SELECT * FROM subject;


SET SQL_SAFE_UPDATES = 0;
UPDATE student SET class_id =2 WHERE student_name="duy trung";


SELECT s.student_name , sb.sub_name, m.mark 
FROM mark m JOIN `subject` sb
ON sb.sub_id =m.sub_id
JOIN student s 
ON 
s.student_id=m.student_id 
ORDER BY m.mark DESC;


