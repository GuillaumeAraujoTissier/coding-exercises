-- Produce a list of all members who have recommended another member
-- Link: https://pgexercises.com/questions/joins/self.html

SELECT m.firstname, m.surname

FROM cd.members m

WHERE 1=1
AND m.memid IN (
	SELECT DISTINCT mem.recommendedby 
	FROM cd.members mem 
	WHERE 1=1
	AND mem.recommendedby IS NOT NULL
	)

ORDER BY m.surname, m.firstname
;
