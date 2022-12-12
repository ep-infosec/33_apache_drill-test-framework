select product.brand_name as c0, product.product_name as c1 from product as product, sales_fact_1997 as sales_fact_1997, store as store, time_by_day as time_by_day where sales_fact_1997.product_id = product.product_id and sales_fact_1997.store_id = store.store_id and store.store_name = 'Store 14' and sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and time_by_day.quarter = 'Q1' and time_by_day.month_of_year = 1 and product.brand_name = 'Just Right' group by product.brand_name, product.product_name order by product.brand_name ASC NULLS LAST, product.product_name ASC NULLS LAST;
