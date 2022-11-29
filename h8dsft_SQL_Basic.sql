
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `teachers_id` int(11) DEFAULT NULL,
  `total_students` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `school` varchar(50) NOT NULL,
  `hire_date` date DEFAULT NULL,
  `salary` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

SELECT * from courses
SELECT * from teachers

SELECT *, courses.name, teachers.id, total_students
from teachers
join courses on teachers.id=courses.teachers_id
GROUP by name,salary desc;