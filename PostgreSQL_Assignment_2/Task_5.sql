 create or replace view team_data as
 SELECT
     t1.teamid,
	 t1.teamname,
	 count(t2.teamid), 
	 SUM (t3.fee) AS total_fee
 FROM
     team t1
 JOIN members t2 on t1.teamid = t2.teamid
 JOIN membertype t3 on t2.membertypeid = t3.id
 group by t1.teamid 
 order by t1.teamname asc
 
 ALTER TABLE team_data RENAME COLUMN count TO number_of_team_members;
 ALTER TABLE team_data RENAME COLUMN total_fee TO membership_fees;
 
 select * from team_data
 