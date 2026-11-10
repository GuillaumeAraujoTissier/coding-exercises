-- Produce a list of member names, with each row containing the total member count
-- Link: https://pgexercises.com/questions/aggregates/countmembers.html

SELECT
COUNT(m.memid) OVER () AS count
,m.firstname
,m.surname
FROM cd.members m

GROUP BY m.joindate, m.surname, m.firstname, m.memid
ORDER BY m.joindate
;
