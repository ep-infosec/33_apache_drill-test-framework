select t.gbyi, count(t.id) countid from `complex.json` t group by t.gbyi having count(t.id) > 6666 order by count(t.id);
