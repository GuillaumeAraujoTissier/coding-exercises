-- Exercise: Retrieve the start times of members' bookings
-- Link: https://pgexercises.com/questions/joins/simplejoin.html

SELECT b.starttime

FROM cd.bookings b
JOIN cd.members m
ON m.memid = b.memid

WHERE 1=1
AND m.firstname = 'David'
and m.surname =  'Farrell'
;
