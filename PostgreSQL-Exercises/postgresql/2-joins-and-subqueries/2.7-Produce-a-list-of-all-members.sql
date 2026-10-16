-- Exercise: Produce a list of all members, along with their recommender, using no joins
-- Link: https://pgexercises.com/questions/joins/sub.html


 SELECT DISTINCT m.firstname || ' ' || m.surname AS member
,(SELECT mem.firstname || ' ' || mem.surname
  FROM cd.members mem
  WHERE mem.memid = m.recommendedby)  AS recommerder

FROM cd.members m
ORDER BY member ;
