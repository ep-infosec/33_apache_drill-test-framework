SELECT col7 , col0 , LAG(col0) OVER(PARTITION BY col7 ORDER BY col0 ) LAG_col0 FROM `allTypsUniq.parquet` WHERE col0 >= 0 and col0 <= 2147483647;