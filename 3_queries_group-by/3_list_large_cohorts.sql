/* Get all cohorts with 18 or more students */

SELECT cohorts.name as cohort_name, count(students.name) as student_count
  FROM cohorts
  INNER JOIN students ON cohorts.id = cohort_id
  GROUP BY cohort_name
  HAVING count(students.name) >= 18
  ORDER BY student_count;