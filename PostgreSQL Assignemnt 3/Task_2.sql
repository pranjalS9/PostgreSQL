CREATE OR REPLACE FUNCTION tournaments(IN tour_year int, OUT number_of_tournaments int) 
LANGUAGE plpgsql  
AS  
$$  
DECLARE   
BEGIN  
    SELECT
	    COUNT(*) 
    INTO number_of_tournaments
    FROM tournament_entry t
	where tour_year = t.year
	GROUP BY t.year;
End;  
$$; 
SELECT * from tournaments(2023);
select * from tournament_entry
