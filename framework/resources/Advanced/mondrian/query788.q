select store.store_country as c0, store.store_state as c1, product_class.product_family as c2, customer.education as c3 from store as store, sales_fact_1997 as sales_fact_1997, product as product, product_class as product_class, customer as customer where sales_fact_1997.store_id = store.store_id and product.product_class_id = product_class.product_class_id and sales_fact_1997.product_id = product.product_id and sales_fact_1997.customer_id = customer.customer_id and (store.store_state in ('CA', 'OR', 'WA')) group by store.store_country, store.store_state, product_class.product_family, customer.education order by store.store_country ASC NULLS LAST, store.store_state ASC NULLS LAST, product_class.product_family ASC NULLS LAST, customer.education ASC NULLS LAST;
