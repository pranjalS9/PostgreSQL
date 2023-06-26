 -- QUERY 2
 -- (Update the members phone with manager’s phone number if the member’s phone number is NULL.)
 update members as m1
 set phone = 
 (select phone from members as m2 
  where m1.coachid = m2.memberid
 )
 where m1.phone is null