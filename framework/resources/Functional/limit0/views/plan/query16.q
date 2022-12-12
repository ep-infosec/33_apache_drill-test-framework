create or replace view v16_limit0_plan as select cast(pageRank as int) pageRank, cast(pageURL as varchar(100)) pageURL, cast(avgDuration as integer) avgDuration from `dfs/parquet/rankings`;
create or replace view v16_2_limit0_plan as select cast(sourceIP as char(15)) sourceIP,cast(destinationURL as character varying(100)) destinationURL,cast(visitDate as date) visitDate,cast(adRevenue as float) adRevenue,cast(userAgent as varchar(61)) userAgent,cast(countryCode as char(3)) countryCode,cast(languageCode as varchar(6)) languageCode,cast(searchWord as varchar(23)) searchWord,cast(duration as int) duration from `dfs/parquet/uservisits`;
explain plan for select * from (select v16_limit0_plan.avgDuration from v16_limit0_plan inner join v16_2_limit0_plan on v16_limit0_plan.pageURL = v16_2_limit0_plan.destinationURL) t limit 0;
drop view v16_limit0_plan;
drop view v16_2_limit0_plan;
