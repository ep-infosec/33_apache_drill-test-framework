SELECT (CASE WHEN coalesce(true,false,false) THEN true ELSE false END) FROM (VALUES(1)) test_tbl;