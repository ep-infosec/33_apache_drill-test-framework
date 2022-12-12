select time_by_day.the_year as c0, customer.state_province as c1, customer.city as c2, customer.education as c3, sum(sales_fact_1997.unit_sales) as m0 from time_by_day as time_by_day, sales_fact_1997 as sales_fact_1997, customer as customer where sales_fact_1997.time_id = time_by_day.time_id and sales_fact_1997.customer_id = customer.customer_id and customer.state_province = 'CA' and customer.city = 'Coronado' group by time_by_day.the_year, customer.state_province, customer.city, customer.education;
