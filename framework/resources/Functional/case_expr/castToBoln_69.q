SELECT columns[0], CAST(columns[1] AS BOOLEAN) FROM `bools.csv` WHERE CAST(columns[1] AS BOOLEAN) <> false;
