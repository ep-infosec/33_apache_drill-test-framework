SELECT (CASE WHEN (65 >= 0) AND (65 < 256) THEN CHR(CAST(FLOOR(122) AS INTEGER)) END) FROM (VALUES(1)) test_tbl;