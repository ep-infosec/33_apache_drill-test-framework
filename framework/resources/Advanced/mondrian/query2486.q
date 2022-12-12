select customer.gender as c0, count(distinct sales_fact_1997.customer_id) as m0 from customer as customer, sales_fact_1997 as sales_fact_1997 where sales_fact_1997.customer_id = customer.customer_id and customer.gender = 'F' group by customer.gender;
