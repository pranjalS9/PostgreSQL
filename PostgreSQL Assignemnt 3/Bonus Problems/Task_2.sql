CREATE OR REPLACE FUNCTION currentdate()
RETURNS TABLE(curr_day INT, curr_month text, curr_year INT)
LANGUAGE plpgsql
AS
$$ 
BEGIN
RETURN QUERY
  SELECT
      EXTRACT(day from current_date)::INT as curr_day,
	  to_char(current_date, 'MM') as curr_month,
	  EXTRACT(year from current_date)::INT as curr_year;
END;
$$;
select * from currentdate();