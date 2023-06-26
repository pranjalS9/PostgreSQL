 -- QUERY 3
/* 
  (3. Find all the members with their membership types and coach name, query should return
  member_first_name, member_last_name, membership_type, coach_name and results should be 
  sorted by member_first_name in descending order.)
*/

 --step: 1
 alter table members add coachname VARCHAR(100) 
 
 --step: 2
 update members as m1
 set coachname = 
 (select firstname from members as m2 
  where m1.coachid = m2.memberid
 )
 where m1.coachid is not null
 
 --step: 3
 SELECT
    m1.firstname,
    m1.lastname,
    m2.type,
    m1.coachname
FROM
    members m1
INNER JOIN membertype m2
ON m1.membertypeid = m2.id
order by m1.firstname desc