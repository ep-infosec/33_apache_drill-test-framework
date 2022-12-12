select t1.l_partkey, t2.o_orderdate from (select l_orderkey, l_partkey, l_comment from `tpch/lineitem.parquet` where l_quantity is null union select l_orderkey, l_partkey, l_comment from `tpch/lineitem.parquet` where l_quantity is null) as t1, `tpch/orders.parquet` as t2 where t1.l_comment = t2.o_comment;
