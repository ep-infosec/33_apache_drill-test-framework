select ws.*, sub.str_null str_null1 from widestrings ws INNER JOIN (select str_null, max(tinyint_var) max_ti from widestrings where tinyint_var > 120 and length(str_var_null_empty) > 4990 group by str_null) sub on ws.tinyint_var = sub.max_ti where length(ws.str_var_null_empty) > 4995;
