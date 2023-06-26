create or replace procedure manager_details(IN first_name varchar(100), IN team_name varchar(100))
language plpgsql
as $$
begin
    update members
	set 
	    firstname = first_name
	where teamid = (select teamid
					from team
					where teamname = team_name and memberid = manager);
end; $$
drop procedure manager_details(first_name varchar(100), team_name varchar(100))
CALL manager_details('Rojes', 'Team A');
CALL manager_details('Mahira', 'Team B');
CALL manager_details('Jockey', 'Team C');
select * from members;