CREATE OR REPLACE FUNCTION team_details(IN team_name varchar) 
RETURNS table (firstname varchar,
			   lastname varchar,
			   membershiptype varchar,
			   joindate date,
			   gender varchar
			   )  
LANGUAGE plpgsql  
AS  
$$  
BEGIN 
    RETURN QUERY
    SELECT
	    m1.firstname,
		m1.lastname,
		m2.type,
		m1.joindate,
		m1.gender
	FROM members m1
	JOIN membertype m2 on m1.membertypeid = m2.id
	JOIN team m3 on m1.teamid = m3.teamid
	where m3.teamname = team_name;
End;  
$$;  
SELECT * from team_details('Team A');
select * from members
SELECT * from tournament;