select student.id, student.name, classes.class_section, classes_teachers.teacher_id, teachers.name 
from student
join classes
on student.classes_section = classes.class_section
join classes_teachers
on classes.class_section = classes_teachers.classes_section
join teachers 
on classes_teachers.teacher_id = teachers.id;