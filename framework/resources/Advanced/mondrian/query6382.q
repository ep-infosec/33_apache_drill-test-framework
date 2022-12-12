select store.store_name as c0, time_by_day.the_year as c1, time_by_day.quarter as c2, time_by_day.month_of_year as c3, customer.customer_id as c4, sum(sales_fact_1997.unit_sales) as m0 from store as store, sales_fact_1997 as sales_fact_1997, time_by_day as time_by_day, customer as customer where sales_fact_1997.store_id = store.store_id and store.store_name = 'Store 14' and sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and time_by_day.quarter = 'Q1' and time_by_day.month_of_year = 1 and sales_fact_1997.customer_id = customer.customer_id and customer.customer_id in (5, 283, 508, 1924, 2274, 3861, 3962, 4293, 4387, 5005, 6131, 6613, 7314, 7495, 7962, 8401, 8648, 8762, 8830, 10197) group by store.store_name, time_by_day.the_year, time_by_day.quarter, time_by_day.month_of_year, customer.customer_id;
