select t.gbyi, max(t.ooof.oa.oab.oabc) maxooof from `complex.json` t group by t.gbyi having max(t.ooof.oa.oab.oabc) >= 99988 order by maxooof;
