SELECT COUNT(c5) OVER(PARTITION BY c8 ORDER BY c1 RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) FROM `t_alltype.parquet`;