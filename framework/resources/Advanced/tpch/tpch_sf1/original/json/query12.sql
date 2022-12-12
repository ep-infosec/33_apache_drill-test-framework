SELECT
  L.L_SHIPMODE,
  SUM(CASE
    WHEN O.O_ORDERPRIORITY = '1-URGENT'
      OR O.O_ORDERPRIORITY = '2-HIGH'
      THEN 1
    ELSE 0
  END) AS HIGH_LINE_COUNT,
  SUM(CASE
    WHEN O.O_ORDERPRIORITY <> '1-URGENT'
      AND O.O_ORDERPRIORITY <> '2-HIGH'
      THEN 1
    ELSE 0
  END) AS LOW_LINE_COUNT
FROM
  orders O,
  lineitem L
WHERE
  O.O_ORDERKEY = L.L_ORDERKEY
  AND L.L_SHIPMODE IN ('TRUCK', 'REG AIR')
  AND L.L_COMMITDate < L.L_RECEIPTDate
  AND L.L_SHIPDATE < L.L_COMMITDate
  AND L.L_RECEIPTDate >= DATE '1994-01-01'
  AND L.L_RECEIPTDate < DATE '1994-01-01' + INTERVAL '1' YEAR
GROUP BY
  L.L_SHIPMODE
ORDER BY
  L.L_SHIPMODE;
