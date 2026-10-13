-- Exercice: Produce a list of all members who have used a tennis court
-- Link: https://pgexercises.com/questions/joins/threejoin.html

SELECT
DISTINCT m.firstname ||  ' ' || m.surname AS member
, f.name AS facility

FROM cd.members m
JOIN cd.bookings b
ON m.memid = b.memid
JOIN cd.facilities f
ON b.facid = f.facid

WHERE f.name LIKE 'Tennis %'

ORDER BY member, facility ;
