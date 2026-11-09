-- List each member's first booking after September 1st 2012
-- Link: https://pgexercises.com/questions/aggregates/nbooking.html

SELECT 
m.surname
,m.firstname
,m.memid
,MIN(b.starttime) AS starttime

FROM cd.members m
JOIN cd.bookings b
ON m.memid = b.memid

WHERE b.starttime >= '2012-09-01'

GROUP BY m.surname, m.firstname, m.memid
ORDER BY m.memid
;
