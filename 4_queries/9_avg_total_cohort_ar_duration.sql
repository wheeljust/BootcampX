/* Get the average total duration of assistance requests for each cohort */
SELECT
  avg(total_duration) AS average_total_duration
FROM
  (
    SELECT
      sum(completed_at - started_at) AS total_duration
    FROM
      assistance_requests
      JOIN students ON student_id = students.id
      JOIN cohorts ON cohort_id = cohorts.id
    GROUP BY
      cohorts.name
  ) AS total_duration;