-- Calculate the payback time for each facility
-- Link: https://pgexercises.com/questions/aggregates/payback.html


WITH facilities AS (
  SELECT f.name AS name
  		 ,f.initialoutlay / ((SUM(CASE WHEN b.memid = 0 THEN b.slots * f.guestcost
			   WHEN b.memid != 0 THEN b.slots * f.membercost END
			 ) - f.monthlymaintenance * 3.0) /3.0) AS months
  FROM cd.facilities f
  JOIN cd.bookings b
  ON f.facid = b.facid
  GROUP BY name , f.initialoutlay, f.monthlymaintenance
  )

SELECT
name
, months
FROM facilities
ORDER BY name
;
