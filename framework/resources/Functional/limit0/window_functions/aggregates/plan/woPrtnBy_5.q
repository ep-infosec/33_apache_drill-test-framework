explain plan for select * from (
SELECT col_int, COUNT(col_int) OVER (ORDER by col_int) count_int FROM `smlTbl_v`) t limit 0;