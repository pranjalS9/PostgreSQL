 SELECT
     m1.firstname,
	 t1.year,
	 count(*) AS numbers_of_tours
 FROM
     members m1
 JOIN tournament_entry t1 on m1.memberid = t1.memberid
 group by m1.memberid, t1.year
 order by m1.memberid
 
 -- according to my tables and their data, a particular
 -- member did only 1 tour in a year so the above query
 -- shows number_of_tours = 1 for every member
 