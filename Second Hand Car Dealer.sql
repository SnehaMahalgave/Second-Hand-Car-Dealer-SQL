create database cars;
use cars;
-- READ DATA--
select * from car_dekho;
-- Total cars to get total count of records--
select count(*) from car_dekho;
-- The manager asked the employee how many cars will be available in 2023--
select count(*) from car_dekho where year = 2023;
-- The manager asked the employee How many cars are available in year 2020,2021,2022--
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- Client asked me to print the total of all cars by year-- 
select year,count(*) from car_dekho group by year;
-- Client asked to car dealer agent how many disel cars will be there in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";
-- Client request a car dealer agent How many petrol cars will be there in 2020 ?--
select count(*) from car_dekho where year = 2020 and fuel = "petrol";
-- The manager told the employee to give a print all the fuel cars (petrol,diesel,and CNG) come by all year--
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- Manager said there were more than 100 cars in given year , which year had more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*) >100;
-- The manager said to the employee all cars count details betweeen 2015 and 2023--
select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said to the employee all cars detail between 2015to 2023--
select * from car_dekho where year between 2015 and 2023;




