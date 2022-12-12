select customer.gender as c0, count(distinct sales_fact_1997.customer_id) as m0 from customer as customer, sales_fact_1997 as sales_fact_1997, time_by_day as time_by_day where sales_fact_1997.customer_id = customer.customer_id and customer.gender = 'F' and sales_fact_1997.time_id = time_by_day.time_id and (time_by_day.the_year = 1997 and time_by_day.quarter = 'Q2' and time_by_day.month_of_year = 5) group by customer.gender;
