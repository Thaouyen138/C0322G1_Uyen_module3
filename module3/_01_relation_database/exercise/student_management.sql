Use student_management;

CREATE TABLE class(
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(45)
);

CREATE TABLE teacher(
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(45),
`age` INT,
`country` VARCHAR(45)
);