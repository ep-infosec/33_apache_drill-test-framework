select sql_to_timestamp('2017-03-31 10:13:00.44','yyyy-mm-dd HH:MI:SS.MS'), sql_to_timestamp('2017-03-31 10:13:00.44 am','yyyy-mm-dd HH12:MI:SS.MS am'), sql_to_timestamp('2017-03-31 15:13:00.44 pm','yyyy-mm-dd HH24:MI:SS.MS pm') from (values(1));
