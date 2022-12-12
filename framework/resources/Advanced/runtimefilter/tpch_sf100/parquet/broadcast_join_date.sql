set `exec.hashjoin.enable.runtime_filter` = true;
set `exec.hashjoin.runtime_filter.max.waiting.time` = 10000;
set `planner.enable_broadcast_join` = true;
set `planner.broadcast_threshold` = 2147483647;

select
  count(*) as row_count
from
  lineitem l1
where
  l1.l_shipdate IN (
    select
      distinct(cast(l2.l_shipdate as date)) as distinctdates
    from
      lineitem l2
    order by
      distinctdates desc
    limit 10);

reset `exec.hashjoin.enable.runtime_filter`;
reset `exec.hashjoin.runtime_filter.max.waiting.time`;
reset `planner.enable_broadcast_join`;
reset `planner.broadcast_threshold`;