-- Exercise: List the total slots booked per facility
-- Link: https://pgexercises.com/questions/aggregates/fachours.html
 
SELECT b.facid
, SUM(b.slots)

FROM cd.bookings b

GROUP BY b.facid

ORDER BY b.facid ;
