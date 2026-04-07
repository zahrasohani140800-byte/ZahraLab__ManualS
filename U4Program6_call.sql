--calling def6
BEGIN
  student_pack.add_student(1, 'Zahra');
END;
/
-- Display the student
BEGIN
  student_pack.show_student(1);
END;
/