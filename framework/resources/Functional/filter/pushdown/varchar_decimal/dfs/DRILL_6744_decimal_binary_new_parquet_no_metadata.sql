select o_totalprice, o_orderdate, o_orderpriority
from `filter/pushdown/varchar_decimal/no_metadata_file/1.16.0/orders`
where o_totalprice < 1000 and o_orderpriority like '%1-URGENT%';