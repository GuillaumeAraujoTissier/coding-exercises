-- Exercise: Produce a list of costly bookings, using a subquery
-- Link: https://pgexercises.com/questions/joins/tjsub.html


SELECT 
member, facility, cost 

FROM (
  SELECT
   m.firstname || ' ' || m.surname AS member
   ,f.name AS facility
   ,CASE
	   WHEN m.memid <> 0 THEN b.slots * f.membercost 
	   WHEN m.memid = 0 THEN b.slots * f.guestcost 
   END AS cost
  
  FROM cd.members m
  JOIN cd.bookings b ON m.memid = b.memid
  JOIN cd.facilities f ON b.facid = f.facid
  
  WHERE b.starttime::date = '2012-09-14'
 )
 
 wHERE cost > 30
 
 ORDER BY cost DESC ;
