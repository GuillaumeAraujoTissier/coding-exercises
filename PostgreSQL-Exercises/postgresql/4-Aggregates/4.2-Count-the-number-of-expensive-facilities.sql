-- Exercise: Count the number of expensive facilities                              
-- Link: https://pgexercises.com/questions/aggregates/count2.html

SELECT COUNT(f.facid)
FROM cd.facilities f
WHERE guestcost >= 10 ;
