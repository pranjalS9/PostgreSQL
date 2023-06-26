 create or replace view open_tournament_data as
 SELECT
     t1.tour_name,
	 t1.country,
	 t1.tour_type,
	 t2.year,
	 count(*) AS number_of_participants
 FROM
     tournament t1
 JOIN tournament_entry t2 on t2.tourid = t1.id
 --JOIN tournament_data t3 on t1.tour_name = t3.tour_name
 where t2.year = (select max(year) from tournament_entry)
 and t1.is_open = true
 group by t1.id, t2.year
 order by t1.id asc
 
 select * from open_tournament_data
 
 -- According to the data of my tables, there is no open tournaments in current year,
 -- so above query will show nothing in my table. 
 -- To prove the validity, I am showing all the non-open tournaments in below query.
 
 create or replace view open_tournament_data as
 SELECT
     t1.tour_name,
	 t1.country,
	 t1.tour_type,
	 t2.year,
	 count(*) AS number_of_participants
 FROM
     tournament t1
 JOIN tournament_entry t2 on t2.tourid = t1.id
 --JOIN tournament_data t3 on t1.tour_name = t3.tour_name
 where t2.year = (select max(year) from tournament_entry)
 and t1.is_open = false
 group by t1.id, t2.year
 order by t1.id asc
 
 select * from open_tournament_data
 