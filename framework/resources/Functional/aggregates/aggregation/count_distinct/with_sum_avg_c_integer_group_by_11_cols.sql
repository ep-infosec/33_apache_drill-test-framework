select count(distinct c_integer), sum(c_integer), round(avg(c_integer)) from alltypes_with_nulls group by  c_varchar,c_integer,c_bigint,d9,d18,d28,d38,c_date,c_time,c_timestamp,c_boolean order by  c_varchar,c_integer,c_bigint,d9,d18,d28,d38,c_date,c_time,c_timestamp,c_boolean;
