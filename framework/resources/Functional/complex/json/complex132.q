select mod(trunc(t.sfa[1]), 10) sfamod, max(t.sfa[0]) sfamax, min(t.sfa[1]) sfamin, avg(t.sfa[2]) sfaavg, count(t.sfa[3]) sfacount from `complex.json` t group by mod(trunc(t.sfa[1]), 10) order by avg(t.sfa[2]);