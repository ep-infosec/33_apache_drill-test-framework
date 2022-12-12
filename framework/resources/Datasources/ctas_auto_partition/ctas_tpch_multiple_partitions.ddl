create table dfs.ctasAutoPartition.`tpch_multiple_partitions/lineitem_twopart` partition by (l_modline, l_moddate) as select l.*, l_shipdate - extract(day from l_shipdate) + 1 l_moddate, mod(l_linenumber,3) l_modline from cp.`tpch/lineitem.parquet` l;
create table dfs.ctasAutoPartition.`tpch_multiple_partitions/lineitem_twopart_ordered` partition by (l_modline, l_moddate) as select l_shipdate - extract(day from l_shipdate) + 1 l_moddate, mod(l_linenumber,3) l_modline from cp.`tpch/lineitem.parquet` l order by l_moddate;
create table dfs.ctasAutoPartition.`tpch_multiple_partitions/lineitem_twopart_ordered2` partition by (l_modline, l_moddate) as select l_shipdate - extract(day from l_shipdate) + 1 l_moddate, mod(l_linenumber,3) l_modline from cp.`tpch/lineitem.parquet` l order by l_modline, l_moddate;
create table dfs.ctasAutoPartition.`tpch_multiple_partitions/lineitem_twopart_ordered3` partition by (l_modline, l_moddate) as select l_shipdate - extract(day from l_shipdate) + 1 l_moddate, mod(l_linenumber,3) l_modline from cp.`tpch/lineitem.parquet` l order by l_modline;
create table dfs.ctasAutoPartition.`tpch_multiple_partitions/lineitem_twopart_zero` partition by (l_modline, l_moddate) as select l.*, l_shipdate - extract(day from l_shipdate) + 1 l_moddate, mod(l_linenumber,3) l_modline from cp.`tpch/lineitem.parquet` l where 1=0;
