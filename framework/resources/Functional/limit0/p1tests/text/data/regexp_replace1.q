select regexp_replace(voter_id,0,5),regexp_replace(name, 'm', 'M'),regexp_replace(age, 7, 6),  regexp_replace(registration, 's', 'S'),regexp_replace(contributions, 3, 9),regexp_replace(voterzone,1,5), regexp_replace(create_time, 24, 27), regexp_replace(isVote, 't', 'T') from voter_csv_v where voter_id=10;