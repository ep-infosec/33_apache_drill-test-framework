select store.store_state as c0, time_by_day.the_year as c1, customer.gender as c2, sum(sales_fact_1997.unit_sales) as m0, count(distinct sales_fact_1997.customer_id) as m1, count(distinct sales_fact_1997.customer_id) as m2 from store as store, sales_fact_1997 as sales_fact_1997, time_by_day as time_by_day, customer as customer where sales_fact_1997.store_id = store.store_id and store.store_state in ('CA', 'OR', 'WA') and sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and sales_fact_1997.customer_id = customer.customer_id and customer.gender = 'M' group by store.store_state, time_by_day.the_year, customer.gender;
