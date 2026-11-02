-- List the total slots booked per facility per month
-- Link: https://pgexercises.com/questions/aggregates/fachoursbymonth2.html

SELECT 
b.facid
, EXTRACT(MONTH from b.starttime) AS month
, SUM(b.slots) AS "Total Slots"

FROM cd.bookings b

WHERE EXTRACT(YEAR from b.starttime) = '2012'
GROUP BY facid, month ;
