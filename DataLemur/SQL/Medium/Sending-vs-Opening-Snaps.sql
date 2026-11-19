-- Exercise: Sending vs. Opening Snaps
-- Link: https://datalemur.com/questions/time-spent-snaps


SELECT 
ab.age_bucket
,ROUND(SUM(
  CASE
       WHEN activity_type = 'send' THEN time_spent
       ELSE 0
  END ) / SUM(
  CASE WHEN activity_type = 'open' THEN time_spent
       WHEN activity_type = 'send' THEN time_spent
       ELSE 0
  END
) * 100.0, 2) AS send_perc

,ROUND(SUM(
  CASE
       WHEN activity_type = 'open' THEN time_spent
       ELSE 0
  END ) / SUM(
  CASE WHEN activity_type = 'open' THEN time_spent
       WHEN activity_type = 'send' THEN time_spent
       ELSE 0
  END
) * 100.0, 2) AS open_perc


FROM age_breakdown ab 
JOIN activities a 
ON ab.user_id = a.user_id

GROUP BY ab.age_bucket

ORDER BY ab.age_bucket
;
