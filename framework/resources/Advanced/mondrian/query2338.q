select time_by_day.the_year as c0, store_ragged.store_country as c1, sum(sales_fact_1997.unit_sales) as m0 from time_by_day as time_by_day, sales_fact_1997 as sales_fact_1997, store_ragged as store_ragged where sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and sales_fact_1997.store_id = store_ragged.store_id and store_ragged.store_country = 'USA' group by time_by_day.the_year, store_ragged.store_country;
