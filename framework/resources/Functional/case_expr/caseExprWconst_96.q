SELECT (CASE WHEN NULLIF(false,false) THEN true WHEN coalesce(true,false,false,null) THEN true ELSE false END) FROM (VALUES(1)) test_tbl;