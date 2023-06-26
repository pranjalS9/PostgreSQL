CREATE OR REPLACE FUNCTION number_of_participants(IN tour_year int,OUT num_participants int)
LANGUAGE plpgsql
AS
$$ 
BEGIN
  SELECT
      COUNT(*) INTO num_participants 
  FROM tournament_entry
  WHERE tournament_entry.year=tour_year;
END;
$$;
select * from tournament_entry
select * from number_of_participants(2022);
select * from tournament
