-- Produce a numbered list of members                                              
-- Link: https://pgexercises.com/questions/aggregates/nummembers.html

SELECT
ROW_NUMBER () OVER (ORDER BY m.joindate) as row_number
,m.firstname
,m.surname
FROM cd.members m

GROUP BY m.firstname, m.surname, m.joindate
ORDER BY m.joindate
;
