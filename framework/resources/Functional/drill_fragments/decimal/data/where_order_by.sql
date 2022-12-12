SET planner.width.max_per_node=100;
SET planner.slice_target=1;
SET planner.enable_multiphase_agg=false;
SELECT
  decimal_big.DECIMAL_18_8,
  decimal_big.DECIMAL_2_1,
  decimal_big.DECIMAL_15_5
FROM
  dfs.drillTestDir.`decimal/fragments/T_DECIMAL_BIG` decimal_big
WHERE
  decimal_big.STR_FIELD LIKE 'TmpString_5%'
  OR decimal_big.DECIMAL_2_1 IN (
    SELECT DISTINCT
      inner_decimal_big.DECIMAL_2_1
    FROM dfs.drillTestDir.`decimal/fragments/T_DECIMAL_BIG` inner_decimal_big
    ORDER BY inner_decimal_big.DECIMAL_2_1
    LIMIT 2
  )
  OR decimal_big.DECIMAL_15_5 BETWEEN 1786136275.26207 AND 5838878814.62053
ORDER BY DECIMAL_2_1
LIMIT 4;
RESET planner.width.max_per_node;
RESET planner.slice_target;
RESET planner.enable_multiphase_agg;
