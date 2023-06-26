select * from members;

create or replace procedure coach_details1(IN coachsaab varchar(100), IN member_name varchar(100))
language plpgsql
as $$
begin
    if not exists(select * from members where firstname=member_name)
	then
	raise 'Change the member name member doesnt exist';
    else
        update members
	    set 
	        firstname = coachsaab
		    where memberid=(select coachid from members where firstname = member_name );
    end if;
end; $$
call coach_details1('Aryan','James')
select * from members;