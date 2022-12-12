select store.store_name as c0, time_by_day.the_year as c1, time_by_day.quarter as c2, time_by_day.month_of_year as c3, customer.state_province as c4, customer.city as c5, sum(sales_fact_1997.unit_sales) as m0 from store as store, sales_fact_1997 as sales_fact_1997, time_by_day as time_by_day, customer as customer where sales_fact_1997.store_id = store.store_id and store.store_name = 'Store 14' and sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and time_by_day.quarter = 'Q1' and time_by_day.month_of_year = 1 and sales_fact_1997.customer_id = customer.customer_id and customer.state_province = 'CA' and customer.city in ('Burlingame', 'Colma', 'Daly City', 'Fremont', 'Mill Valley', 'Novato', 'Palo Alto', 'Redwood City', 'Richmond', 'San Carlos', 'San Jose') group by store.store_name, time_by_day.the_year, time_by_day.quarter, time_by_day.month_of_year, customer.state_province, customer.city;
