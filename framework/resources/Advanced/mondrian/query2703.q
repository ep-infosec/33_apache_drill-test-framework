select customer.city as c0 from customer as customer where (customer.state_province = 'OR') and UPPER(customer.city) = UPPER('W. Linn') group by customer.city order by customer.city ASC NULLS LAST;
