create or replace view dfs.joins.cast_tbl_1_v as select cast(c_varchar as varchar(20)) c_varchar,cast(c_integer as int) c_integer,cast(c_bigint as bigint) c_bigint,cast(c_float as float) c_float,cast(c_double as double) c_double,cast(c_date as date) c_date,cast(c_time as time) c_time, cast(c_timestamp as timestamp) c_timestamp,cast(c_boolean as boolean) c_boolean,cast(d9 as double) d9,cast(d18 as double) d18,cast(d28 as double) d28, cast(d38 as double precision) d38 from `dfs.joins`.cast_tbl_1;

create or replace view dfs.joins.cast_tbl_2_v as select cast(c_varchar as varchar(20)) c_varchar,cast(c_integer as int) c_integer,cast(c_bigint as bigint) c_bigint,cast(c_float as float) c_float,cast(c_double as double) c_double,cast(c_date as date) c_date,cast(c_time as time) c_time, cast(c_timestamp as timestamp) c_timestamp,cast(c_boolean as boolean) c_boolean,cast(d9 as double) d9,cast(d18 as double) d18,cast(d28 as double) d28, cast(d38 as double precision) d38 from `dfs.joins`.cast_tbl_2;