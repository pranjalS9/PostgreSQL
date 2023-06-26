 -- QUERY 5
/*
  (5. Find the Golfers that entered tournaments in 2022 year.
  Result should contain first_name, last_name and tournament type.)
*/
SELECT
    m1.firstname,
    m1.lastname,
    m3.tour_type
FROM
    members m1
INNER JOIN tournament_entry m2 on m1.memberid = m2.memberid
INNER JOIN tournament m3 on m2.tourid = m3.id
where m2.year = 2022