-- List the total hours booked per named facility
-- Link: https://pgexercises.com/questions/aggregates/fachours3.html

SELECT 
b.facid
,f.name
,ROUND(SUM(b.slots) / 2.0, 2) AS "Total Hours"

FROM cd.bookings b
JOIN cd.facilities f 
ON b.facid = f.facid

GROUP BY b.facid, f.name

ORDER BY b.facid
;
