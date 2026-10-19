-- Exercise: Count the number of facilities
-- Link: https://pgexercises.com/questions/aggregates/count.html
 
SELECT COUNT(DISTINCT f.facid)
FROM cd.facilities f ;
