SELECT LEAD(col3) OVER ( PARTITION BY col3 ORDER BY col1 ) LEAD_col3 FROM `fewRowsAllData.parquet`;