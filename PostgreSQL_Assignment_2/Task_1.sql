create or replace view member_data as
 SELECT
     m2.memberid,
	 m2.firstname,
	 m2.joindate,
	 m3.type,
	 m2.gender,
	 m2.coachname,
	 m1.teamname
 FROM
     members m2
 JOIN team m1 on m1.teamid = m2.teamid
 JOIN membertype m3 on m2.membertypeid = m3.id
 
 select * from member_data
 