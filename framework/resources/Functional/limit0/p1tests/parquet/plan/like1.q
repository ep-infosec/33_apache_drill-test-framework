explain plan for select * from ( select name,registration,contributions,voterzone,create_time,isVote from voter_parquet_v where name like '%young' ) t limit 0;
