explain plan for select * from ( select power(voter_id, 2),power(age,2),power(contributions,2),power(voterzone,1) from voter_csv_v where voter_id=10 ) t limit 0;
