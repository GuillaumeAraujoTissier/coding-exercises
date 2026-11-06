-- List the total slots booked per facility per month, part 2
-- Link: https://pgexercises.com/questions/aggregates/fachoursbymonth3.html

SELECT
b.facid as facid
, EXTRACT(MONTH FROM b.starttime) AS month
, SUM(b.slots) AS slots

FROM cd.bookings b
WHERE EXTRACT(YEAR FROM b.starttime) = 2012

GROUP BY ROLLUP(facid, month)
ORDER BY facid, month
;
