select product.product_name as c0 from product as product, product_class as product_class where product.product_class_id = product_class.product_class_id and (product.brand_name = 'CDR' and product_class.product_subcategory = 'Preserves' and product_class.product_category = 'Jams and Jellies' and product_class.product_department = 'Baking Goods' and product_class.product_family = 'Food') and UPPER(product.product_name) = UPPER('CDR Apple Preserves') group by product.product_name order by product.product_name ASC NULLS LAST;