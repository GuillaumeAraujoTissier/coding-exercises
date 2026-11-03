-- List facilities with more than 1000 slots booked
-- Link: https://pgexercises.com/questions/aggregates/fachours1a.html


SELECT
b.facid AS facid
,SUM(b.slots) AS "Total Slots"

FROM cd.bookings b

GROUP BY facid

HAVING SUM(b.slots) > 1000

ORDER BY facid
;
