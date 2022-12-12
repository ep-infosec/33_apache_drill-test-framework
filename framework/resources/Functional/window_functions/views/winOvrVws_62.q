CREATE OR REPLACE VIEW vwOnParq_wCst_62 (col_int, col_bigint, col_char_2, col_vchar_52, col_tmstmp, col_dt, col_booln, col_dbl, col_tm) AS SELECT CAST(col_int AS INTEGER), CAST(col_bigint AS BIGINT), CAST(col_char_2 AS CHAR(2)), CAST(col_vchar_52 AS VARCHAR(52)), CAST(col_tmstmp AS TIMESTAMP), CAST(col_dt AS DATE), CAST(col_booln AS BOOLEAN), CAST(col_dbl AS DOUBLE), CAST(col_tm AS TIME) from `forViewCrn.parquet`;
SELECT col_tm, cume_dist() over(ORDER BY col_tm) from vwOnParq_wCst_62;
DROP VIEW vwOnParq_wCst_62;
