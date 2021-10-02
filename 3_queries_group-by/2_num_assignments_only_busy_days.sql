/* Busy Days: only return days where total assignments is greater than or equal to 10 */

SELECT day, COUNT(*) as total_assignments
  FROM assignments
  GROUP BY day
  HAVING COUNT(*) >= 10
  ORDER BY day;