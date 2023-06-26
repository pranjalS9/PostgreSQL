CREATE OR REPLACE PROCEDURE participate_tournament(member_name varchar, tournament_name varchar, tour_year int)
LANGUAGE plpgsql
AS $$
DECLARE
    member_id INT;
    tour_id INT;
BEGIN
    SELECT memberid INTO member_id FROM members where firstname=member_name;
    SELECT id INTO tour_id FROM tournament where tour_name = tournament_name;
    
    INSERT INTO tournament_entry (memberid, tourid, year) VALUES (member_id, tour_id, tour_year);
END;
$$;
drop procedure participate_tournament(member_name varchar, tournament_name varchar, tour_year INT)
CALL participate_tournament('Joe', 'Tour 2', 2023)
select * from members
select * from tournament
select * from tournament_entry
