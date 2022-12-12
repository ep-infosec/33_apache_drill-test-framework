SELECT
   TIMESTAMPDIFF(SQL_TSI_HOUR, CAST(TIMESTAMPADD(SQL_TSI_SECOND, 7200, CAST(o_orderdate AS TIMESTAMP)) AS TIMESTAMP), CAST(o_orderdate AS TIMESTAMP)) AS num_of_hours
FROM
  orders
WHERE
  o_orderkey = 3;