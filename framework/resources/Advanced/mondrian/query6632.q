select customer.education as c0 from customer as customer, sales_fact_1997 as sales_fact_1997, store as store where sales_fact_1997.customer_id = customer.customer_id and (customer.gender in ('F', 'M')) and sales_fact_1997.store_id = store.store_id and (store.store_state in ('CA', 'OR')) group by customer.education order by customer.education ASC NULLS LAST;