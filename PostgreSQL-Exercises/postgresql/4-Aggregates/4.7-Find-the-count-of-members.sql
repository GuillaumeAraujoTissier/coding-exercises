-- Find the count of members who have made at least one booking
-- Link: https://pgexercises.com/questions/aggregates/members1.html

SELECT
COUNT(DISTINCT b.memid) AS count

FROM cd.bookings b 
;
