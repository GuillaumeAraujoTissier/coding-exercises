-- Exercise: Produce a list of all members, along with their recommender
-- Link: https://pgexercises.com/questions/joins/self2.html

SELECT
mem.firstname AS memfname
, mem.surname AS memsname
, recs.firstname AS refname
, recs.surname AS recsname

FROM cd.members mem 
LEFT JOIN cd.members recs 
ON mem.recommendedby = recs.memid
WHERE 1=1

ORDER BY memsname, memfname, recsname, refname
