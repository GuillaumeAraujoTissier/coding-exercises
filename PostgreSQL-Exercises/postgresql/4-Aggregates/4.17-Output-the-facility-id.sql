-- Output the facility id that has the highest number of slots booked, again                       
-- Link: https://pgexercises.com/questions/aggregates/fachours4.html

with ranked_facid as 
(
  SELECT 
  b.facid AS facid
  ,RANK() OVER (ORDER BY SUM(b.slots) DESC) AS rank
  ,SUM(b.slots) AS total
  FROM cd.bookings b
  GROUP BY b.facid
)

SELECT facid, total 
from ranked_facid
where rank = 1
;
