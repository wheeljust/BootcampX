/* Get currently enrolled students' average assignment completion time */

SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration
  FROM students
  JOIN assignment_submissions ON students.id = student_id
  WHERE students.end_date IS NULL
  GROUP BY student
  ORDER BY average_assignment_duration DESC;