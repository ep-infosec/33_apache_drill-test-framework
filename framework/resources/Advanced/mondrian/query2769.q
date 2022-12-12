select store.store_country as c0, store.store_state as c1, store.store_city as c2, store.store_name as c3, store.store_type as c4, store.store_manager as c5, store.store_sqft as c6, store.grocery_sqft as c7, store.frozen_sqft as c8, store.meat_sqft as c9, store.coffee_bar as c10, store.store_street_address as c11 from store as store, sales_fact_1997 as sales_fact_1997 where sales_fact_1997.store_id = store.store_id and store.store_country = 'USA' and store.store_state = 'OR' and store.store_city in ('Portland', 'Salem') and store.store_name in ('Store 11', 'Store 13') group by store.store_country, store.store_state, store.store_city, store.store_name, store.store_type, store.store_manager, store.store_sqft, store.grocery_sqft, store.frozen_sqft, store.meat_sqft, store.coffee_bar, store.store_street_address order by store.store_country ASC NULLS LAST, store.store_state ASC NULLS LAST, store.store_city ASC NULLS LAST, store.store_name ASC NULLS LAST;
