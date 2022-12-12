explain plan for select * from ( SELECT c.c_first_name, c.c_last_name, DENSE_RANK() OVER (PARTITION BY s.ss_store_sk, s.ss_customer_sk ORDER BY s.ss_store_sk) FROM customer c, store_sales s WHERE c.c_customer_sk = s.ss_customer_sk ORDER BY 1, 2, 3 LIMIT 20 ) t limit 0;
