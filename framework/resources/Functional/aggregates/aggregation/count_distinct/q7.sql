-- join, group by columns from both tables
-- multiple count distinct
-- hash join is enabled

alter session set `planner.enable_mergejoin` = false;
alter session set `planner.enable_hashjoin` = true;

select 	t1.a1, 
	t1.b1, 
	count(distinct t1.a1) as distinct_a1,
	count(distinct t2.a2) as distinct_a2,
	count(distinct t1.b1) as distinct_b1,
	count(distinct t2.b2) as distinct_b2,
	count(distinct t1.c1) as distinct_c1,
	count(distinct t2.c2) as distinct_c2,
       	sum(t1.a1) as sum_a1, 
       	sum(t2.a2) as sum_a1, 
       	avg(t1.a1) as sum_a1, 
       	avg(t2.a2) as sum_a1, 
	count(t1.c1) as count_a1, 
	count(*) as count_star
from 
	t1,
	t2
where
	t1.a1 = t2.a2 and t1.b1 = t2.b2
group by 
	t1.a1, 
	t1.b1,
	t2.a2,
	t2.b2
order by 
	t1.a1, 
	t1.b1,
	t2.a2,
	t2.b2
;

alter session set `planner.enable_mergejoin` = true;
alter session set `planner.enable_hashjoin` = true;
