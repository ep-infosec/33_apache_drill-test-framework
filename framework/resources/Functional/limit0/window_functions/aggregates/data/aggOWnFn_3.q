SELECT * FROM (SELECT c1, c2, LEAD(c2) OVER ( PARTITION BY c2 ORDER BY c1) LEAD_c2, NTILE(3) OVER ( PARTITION BY c2 ORDER BY c1) tile FROM `tblWnulls_v`) sub_query WHERE LEAD_c2 ='e' ORDER BY tile, c1;