select s.name s_name, v.name v_name, v.registration from student_parquet_v s left outer join voter_parquet_v v on (s.name = v.name) where s.age < 30;
