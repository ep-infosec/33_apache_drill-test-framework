select c3 from (select * from `filter/pushdown/DRILL_6118_parquet_without_partitioning`) where c1<3;