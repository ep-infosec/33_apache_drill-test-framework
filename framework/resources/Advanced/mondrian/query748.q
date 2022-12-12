select product_class.product_category as c0 from product as product, product_class as product_class where product.product_class_id = product_class.product_class_id and (product_class.product_department = 'Periodicals' and product_class.product_family = 'Non-Consumable') group by product_class.product_category order by product_class.product_category ASC NULLS LAST;
