explain plan for select * from (
SELECT MAX(tile) FROM (SELECT NTILE(3) OVER(PARTITION BY c2 ORDER BY c1) tile FROM `tblWnulls_v`) sub_query HAVING MAX(tile) > 2) t limit 0;