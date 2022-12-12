select time_by_day.the_year as c0, product.product_name as c1, customer.state_province as c2, customer.city as c3, sum(sales_fact_1997.unit_sales) as m0 from time_by_day as time_by_day, sales_fact_1997 as sales_fact_1997, product as product, customer as customer where sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and sales_fact_1997.product_id = product.product_id and product.product_name = 'Good Light Beer' and sales_fact_1997.customer_id = customer.customer_id and customer.state_province = 'OR' and customer.city in ('Albany', 'Corvallis', 'Lake Oswego', 'Lebanon', 'Portland', 'Woodburn') group by time_by_day.the_year, product.product_name, customer.state_province, customer.city;
