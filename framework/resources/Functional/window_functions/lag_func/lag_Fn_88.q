SELECT col7 , col2 , LAG(col2) OVER(PARTITION BY col7 ORDER BY col2) LAG_col2 FROM `allTypsUniq.parquet`;