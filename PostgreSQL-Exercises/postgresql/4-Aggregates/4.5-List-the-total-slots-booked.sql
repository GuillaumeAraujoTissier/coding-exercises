-- Exercise: List the total slots booked per facility in a given month
-- Link: https://pgexercises.com/questions/aggregates/fachoursbymonth.html

SELECT
b.facid
, SUM(b.slots) as Total_Slots

FROM cd.bookings b

WHERE EXTRACT(MONTH from b.starttime) = '09'
AND EXTRACT(YEAR from b.starttime) = '2012'

GROUP BY b.facid


ORDER BY Total_Slots ;
