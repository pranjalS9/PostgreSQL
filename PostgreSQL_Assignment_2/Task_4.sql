 create or replace view tournament_data as
 SELECT
     t2.id,
	 t2.tour_name,
	 t2.country,
	 t1.year,
	 count(*)
 FROM
     tournament_entry t1
 JOIN tournament t2 on t1.tourid = t2.id
 group by t2.id, t1.year
 order by t2.id asc
 
 select * from tournament_data
 
 ALTER TABLE tournament_data RENAME COLUMN count TO number_of_participants;
 