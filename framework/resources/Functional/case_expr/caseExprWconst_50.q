SELECT (CASE WHEN (false) THEN null ELSE (not null) END) FROM (VALUES(1)) test_tbl;