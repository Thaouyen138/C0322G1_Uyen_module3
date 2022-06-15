USE student_management;

INSERT INTO class
(class_id, class_name, start_date, `status`)
VALUES
(1, "C0222G1", "2022-02-03", 1),
(2, "C0322G1", "2022-03-03", 1),
(3, "C1222G1", "2021-12-27", 1);


INSERT INTO student 
( student_id,student_name, address, phone, `status`,class_id)
VALUES
(1,"thảo uyên", "đà nẵng", "0935333333" ,1, 2),
(2,"hoàng hảo", "hà nội", "0935000111" ,1, 1),
(3,"duy trung", "quảng nam", "0935000111" ,1, 3);


INSERT INTO `subject`
(sub_id , sub_name, credit, `status`)
VALUES 
(1, "CF", 5,1),
(2, "C", 6,1),
(3, "HDJ", 5,1),
(4, "RDBMS", 10,1);

INSERT INTO mark
(mark_id, sub_id, student_id, mark, exam_time)
VALUES
(1,1,1,8,1),
(2,1,2,10,2),
(3,2,1,12,1);