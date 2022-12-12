select product.product_name as c0 from product as product, product_class as product_class where product.product_class_id = product_class.product_class_id and (product.brand_name = 'Tell Tale' and product_class.product_subcategory = 'Fresh Vegetables' and product_class.product_category = 'Vegetables' and product_class.product_department = 'Produce' and product_class.product_family = 'Food') and UPPER(product.product_name) = UPPER('Tell Tale Tomatos') group by product.product_name order by product.product_name ASC NULLS LAST;
