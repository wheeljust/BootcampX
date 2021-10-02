/* Get the total number of assistance_requests for a student */
SELECT
  count(assistance_requests.*) AS total_assistances,
  students.name AS name
FROM
  assistance_requests
  JOIN students ON student_id = students.id
WHERE
  name = 'Elliot Dickinson'
GROUP BY
  name;