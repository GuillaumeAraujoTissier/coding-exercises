-- Exercise: Count the number of recommendations each member makes 
-- Link: https://pgexercises.com/questions/aggregates/count3.html
 
SELECT
m.recommendedby AS recommendedby
,COUNT(m.recommendedby) AS count

FROM cd.members m 
  
WHERE m.recommendedby  IS NOT NULL
  
GROUP BY m.recommendedby
ORDER BY recommendedby ;
