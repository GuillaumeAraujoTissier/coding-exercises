-- Calculate a rolling average of total revenue                     
-- Link: https://pgexercises.com/questions/aggregates/rollingavg.html


WITH day_of_month AS (
  SELECT generate_series(
    DATE '2012-07-18',
    DATE '2012-08-31',
    INTERVAL '1 day'
  )::date as date ),
  
 average AS (
 SELECT
   dom.date
   ,COALESCE(SUM ( 
		CASE 
			WHEN boo.memid = 0 THEN boo.slots * fac.guestcost
			WHEN boo.memid != 0 THEN boo.slots * fac.membercost 
		END ), 0)as avg

  FROM day_of_month dom
  LEFT JOIN cd.bookings boo 
	ON dom.date = boo.starttime::date
  LEFT JOIN cd.facilities fac
	ON boo.facid = fac.facid
  GROUP by dom.date
  ),
  
  rolling_average AS (
  SELECT
  avg.date
  ,AVG(avg.avg) OVER (
				ORDER BY avg.date ROWS BETWEEN 14 PRECEDING AND CURRENT ROW
					) as revenue
 FROM average avg

						) 
SELECT
ra.date AS date
,ra.revenue AS revenue

FROM rolling_average ra
WHERE date >= '2012-08-01' 
ORDER BY date
;
