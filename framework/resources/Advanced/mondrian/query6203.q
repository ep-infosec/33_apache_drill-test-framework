select promotion.promotion_name as c0 from promotion as promotion, sales_fact_1997 as sales_fact_1997, store as store, time_by_day as time_by_day, product as product where sales_fact_1997.promotion_id = promotion.promotion_id and sales_fact_1997.store_id = store.store_id and store.store_name = 'Store 14' and sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and time_by_day.quarter = 'Q1' and time_by_day.month_of_year = 1 and sales_fact_1997.product_id = product.product_id and product.brand_name = 'Bravo' group by promotion.promotion_name order by promotion.promotion_name ASC NULLS LAST;
