SELECT MIN(lag_col1) FROM (SELECT LAG(col1) OVER(PARTITION BY col7 ORDER BY col1) lag_col1 , col7 FROM `allTypsUniq.parquet`) sub_query;