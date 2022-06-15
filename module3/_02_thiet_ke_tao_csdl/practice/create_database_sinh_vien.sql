CREATE DATABASE student_management;
USE student_management;

CREATE TABLE class
(class_id INT PRIMARY KEY AUTO_INCREMENT,
class_name VARCHAR(60) NOT NULL,
start_date DATETIME NOT NULL,
`status` BIT
);

CREATE TABLE student
( student_id INT AUTO_INCREMENT PRIMARY KEY,
student_name VARCHAR(30) NOT NULL,
address VARCHAR(50),
phone VARCHAR(20),
`status` BIT,
class_id INT,
FOREIGN KEY (class_id) REFERENCES class(class_id)
);

CREATE TABLE `subject` 
(sub_id INT PRIMARY KEY AUTO_INCREMENT,
sub_name VARCHAR(30) NOT NULL,
credit TINYINT NOT NULL DEFAULT 1 CHECK (credit >= 1),
`status` BIT DEFAULT 1
);
 
CREATE TABLE mark 
(
mark_id INT PRIMARY KEY AUTO_INCREMENT,
sub_id INT, 
student_id INT , 
FOREIGN KEY (sub_id) REFERENCES `subject` (sub_id),
FOREIGN KEY (student_id) REFERENCES student (student_id),
mark FLOAT DEFAULT 0 CHECK (mark BETWEEN 0 AND 100),
exam_time TINYINT DEFAULT 1
);