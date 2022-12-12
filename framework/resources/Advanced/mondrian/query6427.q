select customer.education as c0 from customer as customer, sales_fact_1997 as sales_fact_1997, time_by_day as time_by_day where sales_fact_1997.customer_id = customer.customer_id and sales_fact_1997.time_id = time_by_day.time_id and ((time_by_day.the_year = 1997 and time_by_day.quarter = 'Q1') or (time_by_day.the_year = 1998 and time_by_day.quarter = 'Q2')) group by customer.education order by customer.education ASC NULLS LAST;
