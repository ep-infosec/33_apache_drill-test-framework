select stddev_samp(voter_id),stddev_samp(age),stddev_samp(contributions),stddev_samp(voterzone) from voter_parquet_v where age > 30;
