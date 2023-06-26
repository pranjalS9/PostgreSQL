 -- QUERY 7
 -- (7.	Return team wise members count only if the member count is greater than 5.)
 SELECT
    t1.teamname,
	count(*)
FROM
    team t1
INNER JOIN members t2
ON t1.teamid = t2.teamid
group by teamname
having count(teamname)>5