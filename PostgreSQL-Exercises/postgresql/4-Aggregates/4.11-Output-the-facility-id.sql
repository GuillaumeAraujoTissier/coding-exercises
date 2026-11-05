-- Output the facility id that has the highest number of slots booked 
-- Link: https://pgexercises.com/questions/aggregates/fachours2.html

SELECT 
b.facid
, SUM(b.slots) AS "Total Slots"

FROM cd.bookings b

GROUP BY b.facid

ORDER BY "Total Slots" DESC
LIMIT 1;
