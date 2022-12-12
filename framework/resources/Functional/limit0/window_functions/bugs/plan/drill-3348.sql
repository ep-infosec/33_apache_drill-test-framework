-- NPE when two different window functions are used in projection list and order by clauses
explain plan for select * from (
select
        a1,
        rank() over(partition by b1 order by a1)
from
        t1_v
order by
        row_number() over(partition by b1 order by a1)) t limit 0;