 -- QUERY 6
 -- (6.	Find the membership wise count of members, result should return membership_name and member_count)
SELECT
    m2.type,
    count(*)
FROM
    members m1
INNER JOIN membertype m2
ON m1.membertypeid = m2.id
group by type