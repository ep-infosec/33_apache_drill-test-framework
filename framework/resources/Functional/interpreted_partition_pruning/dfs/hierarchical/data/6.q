select columns[0], columns[1], columns[4], columns[10], columns[13] from dfs.`/drill/testdata/partition_pruning/hive/text/lineitem_hierarchical_intint` where dir0>1992 and dir0<1994 and dir1='dec';
