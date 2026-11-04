-- Find facilities with a total revenue less than 1000
-- Link: https://pgexercises.com/questions/aggregates/facrev2.html

SELECT name, revenue 
FROM (
	SELECT 
	
	f.name AS name
	,SUM(   CASE
		WHEN b.memid = 0 THEN b.slots * f.guestcost
		ELSE b.slots * f.membercost
			END ) AS revenue
			
	FROM cd.facilities f
	
	JOIN cd.bookings b
	ON f.facid = b.facid 
    
    GROUP BY f.name) AS facrev

WHERE revenue < 1000

ORDER BY revenue
;
