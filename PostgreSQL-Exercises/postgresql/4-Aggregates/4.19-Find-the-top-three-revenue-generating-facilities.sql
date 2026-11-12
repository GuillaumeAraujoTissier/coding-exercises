-- Find the top three revenue generating facilities      
-- Link: https://pgexercises.com/questions/aggregates/facrev3.html

with ranking as (
					SELECT 
					f.name AS name
					,RANK() OVER (ORDER BY SUM(
					  						CASE WHEN b.memid = 0 THEN b.slots * f.guestcost 
												 WHEN b.memid != 0 THEN b.slots * f.membercost END
					  ) DESC
						 ) as rank
  
FROM cd.facilities f 
JOIN cd.bookings b
ON f.facid = b.facid
  GROUP BY f.name)

SELECT name, rank
FROM ranking

WHERE rank <= 3
GROUP BY name, rank
ORDER BY rank, name
;
			
