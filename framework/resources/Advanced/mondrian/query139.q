select time_by_day.the_year as c0, time_by_day.quarter as c1, time_by_day.month_of_year as c2, sum(inventory_fact_1997.units_shipped) as m0, sum(inventory_fact_1997.units_ordered) as m1 from time_by_day as time_by_day, inventory_fact_1997 as inventory_fact_1997 where inventory_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and time_by_day.quarter = 'Q4' and time_by_day.month_of_year = 12 group by time_by_day.the_year, time_by_day.quarter, time_by_day.month_of_year;
