create or replace view nation_double_14 as select cast(columns[0] as int) n_nationkey, columns[1] n_name, cast(columns[2] as int) n_regionkey, columns[3] n_comment from `nation.tbl`;
create or replace view region_double_14 as select cast(columns[0] as int) r_regionkey, columns[1] r_name, columns[2] r_comment from `region.tbl`;
create or replace view part_double_14 as select cast(columns[0] as int) p_partkey, columns[1] p_name, columns[2] p_mfgr, columns[3] p_brand, columns[4] p_type, cast(columns[5] as int) p_size, columns[6] p_container, cast(columns[7] as double) p_retailprice, columns[8] p_comment from `part.tbl`;
create or replace view supplier_double_14 as select cast(columns[0] as int) s_suppkey, columns[1] s_name, columns[2] s_address, cast(columns[3] as int) s_nationkey, columns[4] s_phone, cast(columns[5] as double) s_acctbal, columns[6] s_comment from `supplier.tbl`;
create or replace view partsupp_double_14 as select cast(columns[0] as int) ps_partkey, cast(columns[1] as int) ps_suppkey, cast(columns[2] as int) ps_availqty, cast(columns[3] as double) ps_supplycost, columns[4] ps_comment from `partsupp.tbl`;
create or replace view customer_double_14 as select cast(columns[0] as int) c_custkey, columns[1] c_name, columns[2] c_address, cast(columns[3] as int) c_nationkey, columns[4] c_phone, cast(columns[5] as double) c_acctbal, columns[6] c_mktsegment, columns[7] c_comment from `customer.tbl`;
create or replace view orders_double_14 as select cast(columns[0] as int) o_orderkey, cast(columns[1] as int) o_custkey, columns[2] o_orderstatus, cast(columns[3] as double) o_totalprice, cast(columns[4] as date)o_orderdate, columns[5] o_orderpriority, columns[6] o_clerk, cast(columns[7] as int) o_shippriority, columns[8] o_comment from `orders.tbl`;
create or replace view lineitem_double_14 as select cast(columns[0] as int) l_orderkey, cast(columns[1] as int) l_partkey, cast(columns[2] as int) l_suppkey, cast(columns[3] as int) l_linenumber, cast(columns[4] as double) l_quantity, cast(columns[5] as double) l_extendedprice, cast(columns[6] as double) l_discount, cast(columns[7] as double) l_tax, columns[8] l_returnflag, columns[9] l_linestatus, cast(columns[10] as date) l_shipdate, cast(columns[11] as date) l_commitdate, cast(columns[12] as date) l_receiptdate, columns[13] l_shipinstruct, columns[14] l_shipmode, columns[15] l_comment from `lineitem.tbl`;
select
  100.00 * sum(case
    when p.p_type like 'PROMO%'
      then l.l_extendedprice * (1 - l.l_discount)
    else 0
  end) / sum(l.l_extendedprice * (1 - l.l_discount)) as promo_revenue
from
  lineitem_double_14 l,
  part_double_14 p
where
  l.l_partkey = p.p_partkey
  and l.l_shipdate >= date '1994-08-01'
  and l.l_shipdate < date '1994-08-01' + interval '1' month;
drop view nation_double_14;
drop view region_double_14;
drop view part_double_14;
drop view supplier_double_14;
drop view partsupp_double_14;
drop view customer_double_14;
drop view orders_double_14;
drop view lineitem_double_14;
