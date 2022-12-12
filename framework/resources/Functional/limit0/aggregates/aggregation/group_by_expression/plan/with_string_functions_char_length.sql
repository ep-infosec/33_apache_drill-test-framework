-- coalesce with columns from side that does not produce nulls
-- string manipulation functions
-- char_length - not a calcite built in function
explain plan for select * from (
select 
	count(*),
        substr(lower(UPPER(to_char(t1.c1, 'MMM-DD-YY'))), 5, 2),
	char_length(substr(lower(UPPER(to_char(t1.c1, 'MMM-DD-YY'))), 5, 2))
from 
	t1_v t1 left outer join t2_v t2 on t1.a1 = t2.a2 
	left outer join t3_v t3 on t1.c1 = t3.c3
group by
        substr(lower(UPPER(to_char(t1.c1, 'MMM-DD-YY'))), 5, 2),
	char_length(substr(lower(UPPER(to_char(t1.c1, 'MMM-DD-YY'))), 5, 2))
order by
        substr(lower(UPPER(to_char(t1.c1, 'MMM-DD-YY'))), 5, 2),
	char_length(substr(lower(UPPER(to_char(t1.c1, 'MMM-DD-YY'))), 5, 2))
) t limit 0;

