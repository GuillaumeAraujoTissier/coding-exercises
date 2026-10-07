-- Exercise: Work out the start times of bookings for tennis courts
-- Link: https://pgexercises.com/questions/joins/simplejoin2.html

SELECT 
b.starttime AS start
,f.name AS name
  
FROM cd.bookings b
JOIN cd. facilities f
ON b.facid = f.facid
  
WHERE 1=1
AND b.starttime BETWEEN '2012-09-21' AND '2012-09-22'
AND f.name LIKE 'Tennis Court %'
ORDER BY b.starttime
;
