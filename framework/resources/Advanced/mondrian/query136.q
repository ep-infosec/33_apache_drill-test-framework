select store.store_name as c0, time_by_day.the_year as c1, time_by_day.quarter as c2, count(distinct sales_fact_1997.customer_id) as m0 from store as store, sales_fact_1997 as sales_fact_1997, time_by_day as time_by_day where sales_fact_1997.store_id = store.store_id and sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and time_by_day.quarter = 'Q3' group by store.store_name, time_by_day.the_year, time_by_day.quarter;
