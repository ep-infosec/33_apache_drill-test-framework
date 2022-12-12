select product_class.product_department as c0 from product as product, product_class as product_class where product.product_class_id = product_class.product_class_id and (product_class.product_family = 'Drink') and UPPER(product_class.product_department) = UPPER('Alcoholic Beverages') group by product_class.product_department order by product_class.product_department ASC NULLS LAST;
