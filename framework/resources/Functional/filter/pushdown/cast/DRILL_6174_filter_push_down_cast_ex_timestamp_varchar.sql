select cast(c4 as varchar), cast(c5 as varchar), cast(c6 as varchar)
from `filter/pushdown/DRILL_6174_test_data`
where c4 = cast(timestamp '2017-01-02 01:02:55' as varchar);