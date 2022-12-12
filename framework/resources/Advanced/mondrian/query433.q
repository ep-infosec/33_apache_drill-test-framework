select product_class.product_department as c0 from product_class as product_class, product as product, sales_fact_1997 as sales_fact_1997, customer as customer where sales_fact_1997.product_id = product.product_id and product.product_class_id = product_class.product_class_id and product_class.product_family = 'Drink' and sales_fact_1997.customer_id = customer.customer_id and customer.state_province = 'CA' and customer.city = 'San Francisco' group by product_class.product_department order by product_class.product_department ASC NULLS LAST;
