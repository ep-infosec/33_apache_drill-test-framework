SELECT LEAD(col3 ) OVER ( PARTITION BY col2 ORDER BY col0 nulls LAST ) LEAD_col3 FROM `fewRowsAllData.parquet`;