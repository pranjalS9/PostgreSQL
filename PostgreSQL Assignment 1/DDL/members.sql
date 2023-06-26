create table members 
 (
	memberid int primary key,
	firstname VARCHAR(100),
	lastname VARCHAR(100),
	membertypeid int,
	foreign key (membertypeid) references membertype(id),
	joindate date,
	coachid int,
	--foreign key (coachid) refrences members(memberid),
	teamid int,
	--foreign key (teamid) references team(teamid),
	gender VARCHAR(50),
	phone bigint
 )