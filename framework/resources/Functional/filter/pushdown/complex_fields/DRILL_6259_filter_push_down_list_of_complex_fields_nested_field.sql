select * from `filter/pushdown/DRILL_6259_test_data` t where t.list_of_complex_fields[1].nested_field is not true;