SELECT AVG(lag_c1) FROM (SELECT LAG(c1) OVER(PARTITION BY c2 ORDER BY c1) lag_c1 , c2 FROM `tblWnulls.parquet`) sub_query;