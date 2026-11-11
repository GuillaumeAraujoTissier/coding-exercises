-- Rank members by (rounded) hours used               
-- Link: https://pgexercises.com/questions/aggregates/rankmembers.html

SELECT
m.firstname
,m.surname
,ROUND((SUM(b.slots) * 0.5)::numeric, -1) AS hours
,RANK () OVER (ORDER BY ROUND((SUM(b.slots) * 0.5)::numeric, -1) DESC) AS rank

FROM cd.members m
JOIN cd.bookings b
on m.memid = b.memid

GROUP BY m.firstname, m.surname
ORDER BY rank, surname, firstname
;
