select p_name, p_brand, p_retailprice
from `filter/pushdown/varchar_decimal/new_metadata_file/1.14.0/part`
where p_retailprice > 1900.989;
