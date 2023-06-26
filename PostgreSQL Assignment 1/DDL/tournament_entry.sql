create table tournament_entry 
 (
	 memberid int primary key,
	 foreign key (memberid) references members(memberid),
	 tourid int,
	 foreign key (tourid) references tournament(id),
	 year int
 )