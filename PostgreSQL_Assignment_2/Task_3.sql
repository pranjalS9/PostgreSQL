 SELECT
     m1.firstname,
	 m2.type,
	 m1.coachname
 FROM
     members m1
 JOIN membertype m2 on m1.membertypeid = m2.id
 JOIN tournament_entry m3 on m1.memberid = m3.memberid
 where m3.tourid = null
 
  -- according to my tables and their data, there is no
  -- member who has never participated in the tournament
  -- so above queries will show empty table structure
 