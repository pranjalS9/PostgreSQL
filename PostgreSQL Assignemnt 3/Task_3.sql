CREATE OR REPLACE FUNCTION yearly_tournament(IN tourn_year int) 
RETURNS table (tournament_name varchar,
			   tour_type varchar,
			   country varchar,
			   is_open boolean
			   )  
LANGUAGE plpgsql  
AS  
$$  
BEGIN 
    RETURN QUERY
    SELECT
	    t1.tour_name as tour_name,
		t1.tour_type as tour_type,
		t1.country as country,
		t1.is_open as is_open
	FROM tournament t1
	JOIN tournament_entry t2 on t1.id = t2.tourid
	WHERE t2.year = tourn_year;
End;  
$$;  
SELECT * from yearly_tournament(2023);
SELECT * from tournament;