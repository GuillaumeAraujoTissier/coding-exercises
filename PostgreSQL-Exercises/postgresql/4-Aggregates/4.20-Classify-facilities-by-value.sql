-- Classify facilities by value
-- Link: https://pgexercises.com/questions/aggregates/classify.html

WITH ranking as (
  SELECT
  	f.name
  	,NTILE(3) OVER (ORDER BY SUM(
	  							CASE
	  								WHEN b.memid != 0 THEN f.membercost * b.slots
	  								WHEN b.memid = 0 THEN f.guestcost * b.slots
	  	  						END ) DESC ) as rank
  FROM cd.facilities f
  JOIN cd.bookings b
  ON f.facid = b.facid
  GROUP BY f.name
  
  )
  
  SELECT
  	name 
	,CASE 
		WHEN rank = 1 THEN 'high'
		WHEN rank = 2 THEN 'average'
		WHEN rank = 3 THEN 'low'
	END as revenue
  FROM ranking
  ORDER BY rank, name
  ;
