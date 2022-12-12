select store.store_state as c0, store.store_city as c1, time_by_day.the_year as c2, customer.education as c3, sum(sales_fact_1997.unit_sales) as m0 from store as store, sales_fact_1997 as sales_fact_1997, time_by_day as time_by_day, customer as customer where sales_fact_1997.store_id = store.store_id and sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and sales_fact_1997.customer_id = customer.customer_id group by store.store_state, store.store_city, time_by_day.the_year, customer.education;
