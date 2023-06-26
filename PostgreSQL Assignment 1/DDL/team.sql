create table team 
(
	teamid int primary key,
	teamname VARCHAR(100),
	manager int,
	foreign key (manager) references members(memberid) 
)