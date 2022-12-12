select time_by_day.the_year as c0, product_class.product_family as c1 from time_by_day as time_by_day, sales_fact_1997 as sales_fact_1997, product as product, product_class as product_class where sales_fact_1997.time_id = time_by_day.time_id and product.product_class_id = product_class.product_class_id and sales_fact_1997.product_id = product.product_id and (time_by_day.the_year = 1997) group by time_by_day.the_year, product_class.product_family order by time_by_day.the_year ASC NULLS LAST, product_class.product_family ASC NULLS LAST;
