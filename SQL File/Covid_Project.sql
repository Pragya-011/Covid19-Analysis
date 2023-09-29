CREATE DATABASE Covid_Project;

USE Covid_Project;
SELECT * FROM ts_delta_clean ;
SELECT * FROM ts_total_clean ;
SELECT * FROM ts_delta7_clean ;

# Removing data of states which are not in India-
DELETE FROM ts_delta_clean WHERE state='TT' OR state='UN';
DELETE FROM ts_total_clean WHERE state='TT' OR state='UN';
DELETE FROM ts_delta7_clean WHERE state='TT' OR state='UN';

# Drop a extra column vaccinated which is blank:
ALTER TABLE ts_delta_clean
DROP COLUMN vaccinated;

ALTER TABLE ts_total_clean
DROP COLUMN vaccinated;

ALTER TABLE ts_delta7_clean
DROP COLUMN vaccinated;

# Daily data count of country:
WITH CTE1 AS(select date,sum(confirmed) AS daily_confirmed,sum(deceased) AS daily_deceased,
sum(recovered) AS daily_recovered,sum(tested) AS daily_tested, 
sum(vaccinated1) AS daily_vaccinated1,sum(vaccinated2) AS daily_vaccinated2
FROM ts_delta_clean group by date order by date),
# total data count of country:
CTE2 AS(select date,sum(confirmed) AS total_confirmed,sum(deceased) AS total_deceased,
sum(recovered) as total_recovered,sum(tested) as total_tested, 
sum(vaccinated1)total_vaccinated1,sum(vaccinated2)total_vaccinated2
FROM ts_total_clean group by date order by date)
# joining these 2 table to on the basis of date(country_data_daily_basis):
SELECT * FROM CTE1 JOIN CTE2 ON CTE1.date=CTE2.date ;

# Weekly evolution of number of confirmed cases, recovered cases, deaths, tests.
# Comparison example: The Dashboard should be able to compare Week 3 of May with Week 2 of August 

with cte1 as(select date,year(date) as yr,monthname(date) as mnth,
case when day(date)<=7 then 1 when day(date) between 8 and 14 then 2 
when day(date) between 15 and 21 then 3 when day(date) between 22 and 28 then 4
else 5 end as weeknumber ,
sum(confirmed) as daily_confirmed,sum(deceased) as daily_deceased,
sum(recovered) as daily_recovered,sum(tested) as daily_tested
from ts_delta_clean group by yr,mnth,date order by date)

select yr,mnth,weeknumber,sum(daily_confirmed) as confirmed,
sum(daily_deceased)deceased,sum(daily_recovered)recovered,
sum(daily_tested)tested  from cte1 group by yr,mnth,weeknumber ;

# State level analysis:
SELECT * FROM df_delta_statewise_clean;
SELECT * FROM df_delta7_statewise_clean;
SELECT * FROM df_total_statewise_cleaned;
SELECT * FROM df_meta_statewise_clean;

# Dropping an unknown state 'TT' :
DELETE FROM df_delta_statewise_clean WHERE MyUnknownColumn='TT';
DELETE FROM df_delta7_statewise_clean WHERE MyUnknownColumn='TT';
DELETE FROM df_total_statewise_cleaned WHERE state='TT';
DELETE FROM df_meta_statewise_clean WHERE MyUnknownColumn='TT';

# Changing column name:
ALTER TABLE df_delta_statewise_clean
RENAME COLUMN MyUnknownColumn TO state;

ALTER TABLE df_delta7_statewise_clean
RENAME COLUMN MyUnknownColumn TO state;

ALTER TABLE df_total_statewise_cleaned
RENAME COLUMN MyUnknownColumn TO state;

ALTER TABLE df_meta_statewise_clean
RENAME COLUMN MyUnknownColumn TO state;

-- Most confirmed cases KPI [Statewise total data]
SELECT * FROM df_total_statewise_cleaned
ORDER BY confirmed DESC;

-- Most confirmed cases KPI [Statewise Delta - one day analysis]
SELECT * FROM df_delta_statewise_clean
ORDER BY confirmed DESC;

-- Most confirmed cases KPI [Statewise Delta7 - one day analysis]
SELECT * FROM df_delta7_statewise_clean
ORDER BY confirmed DESC;

# last_date= 31/10/2021 
# Combining meta and total table to analyse vaccination drive:

SELECT t.state,population,vaccinated1,vaccinated2,
((vaccinated1/population)*100) AS percent_of_dose1,
((vaccinated2/population)*100) AS percent_of_dose2
FROM df_total_statewise_cleaned t JOIN
df_meta_statewise_clean m ON t.state=m.state;

# State wise timeseries :
with cte1 as (select state,year(date) as yr,monthname(date) as mnth,
sum(confirmed) daily_confirmed ,sum(recovered) daily_recovered,
sum(tested) as daily_tested,sum(deceased) as daily_deceased,
sum(vaccinated1) as daily_vaccinated1,sum(vaccinated2) as daily_vaccinated2
from ts_delta_clean group by state,yr,mnth),
cte2 as(select state,year(date) as yr,monthname(date) as mnth,
max(confirmed) total_confirmed ,max(recovered) total_recovered,
max(tested) as total_tested,max(deceased) as total_deceased,
max(vaccinated1) as total_vaccinated1,max(vaccinated2) as total_vaccinated2
from ts_total_clean group by state,yr,mnth)
# joining these 2 data :
SELECT * FROM cte1 join cte2 on cte1.state=cte2.state and cte1.yr=cte2.yr and
cte1.mnth=cte2.mnth;

# Categorise total number of confirmed cases in a state by Months and come 
# up with that one month which was worst for India in terms of number of cases

select state,year(date) as yr,monthname(date) as mnth,
sum(confirmed) total_confirmed
from ts_delta_clean 
group by 1,2,3;

# Seven day moving average data country:
select * from ts_delta7_clean ;

with cte1 as(select date,sum(confirmed) as daily_new_cases,sum(deceased) as daily_new_death,
sum(recovered) as daily_new_recovered
from ts_delta7_clean group by date order by date)

select date,avg(daily_new_cases) over (order by date rows between 6 preceding and current row) as seven_day_moving_average_confirmed,
avg(daily_new_death) over (order by date rows between 6 preceding and current row) as seven_day_moving_average_death,
avg(daily_new_recovered) over (order by date rows between 6 preceding and current row) as seven_day_moving_average_recovered
from cte1;

# Calculation of Test Ratio of States:
SELECT t.state as State, t.tested as Statewise_total_number_of_tests, 
m.population as Statewise_population, 
ROUND((CAST(t.tested as FLOAT)/ m.population),2) as test_ratio 
FROM df_total_statewise_cleaned t
JOIN df_meta_statewise_clean m ON t.state = m.state
ORDER BY test_ratio DESC;

## District Level Analysis:
SELECT * FROM districts_final;

# Categorise every district on testing ratio:
CREATE VIEW district_category_tr_data AS
SELECT *,
  CASE
    WHEN Testing_Ratio <= 0.1 THEN 'CATEGORY A'
    WHEN Testing_Ratio > 0.1 AND Testing_Ratio <= 0.3 THEN 'CATEGORY B'
    WHEN Testing_Ratio > 0.3 AND Testing_Ratio <= 0.5 THEN 'CATEGORY C'
    WHEN Testing_Ratio > 0.5 AND Testing_Ratio <= 0.75 THEN 'CATEGORY D'
    WHEN Testing_Ratio > 0.75 THEN 'CATEGORY E'
  END AS Category_tr
FROM (
  SELECT state, district, tested, population, deceased,
  (tested / population) AS Testing_Ratio
  FROM districts_final
) AS X
Order by state;

# Category wise count of districts:
SELECT Category_tr,COUNT(Category_tr) as Category_wise_count 
FROM district_category_tr_data
GROUP BY Category_tr
ORDER BY Category_wise_count DESC;

# Total No of deaths in each category:
SELECT district,population,Category_tr,SUM(deceased) AS deaths, 
ROUND((SUM(deceased) / SUM(population)) * 100, 2) AS death_percentage
FROM district_category_tr_data
GROUP BY district,population,Category_tr
ORDER BY Category_tr desc;

# Death analysis for each category:
WITH CTE AS(
SELECT district,population,Category_tr,SUM(deceased) AS deaths, 
SUM(population) AS popl
FROM district_category_tr_data
GROUP BY district,population,Category_tr
ORDER BY Category_tr)
SELECT Category_tr,COUNT(Category_tr) as Category_wise_count,
Sum(deaths) AS total_deaths,
ROUND((SUM(deaths) / SUM(popl)) * 100, 4) AS death_percentage
FROM CTE
Group by category_tr;

