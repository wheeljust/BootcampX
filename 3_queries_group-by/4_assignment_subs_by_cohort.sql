/* Get the total number of assignment submissions for each cohort */

SELECT cohorts.name as cohort, count(assignment_submissions.id) as total_submissions
  FROM cohorts
  JOIN students ON cohorts.id = cohort_id
  JOIN assignment_submissions ON students.id = student_id
  GROUP BY cohort
  ORDER BY total_submissions DESC;