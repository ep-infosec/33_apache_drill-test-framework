select ws.*, sub.str_empty str_empty1 from widestrings ws INNER JOIN (select str_empty, max(tinyint_var) max_ti from widestrings group by str_empty) sub on ws.tinyint_var = sub.max_ti;
