-- Create Database

CREATE SCHEMA Cars;

-- Import CSV file

USE cars;

-- READ DATA

SELECT * FROM car_dekho;

-- Q1. Total cars to get a count of total records

SELECT 
    COUNT(*) AS Total_cars
FROM
    car_dekho;

-- Q2. The manager asked the employee how many cars will be available in 2023?

SELECT 
    Year, COUNT(*) AS Cars_available
FROM
    car_dekho
WHERE
    year = '2023';

-- Q3. The manager asked the employee how many cars will be available in 2020. 2021, 2022?

SELECT 
    Year, COUNT(*) AS Cars_available
FROM
    car_dekho
WHERE
    year IN ('2020' , '2021', '2022')
GROUP BY year;

-- Q4. Client asked me to print the total of all cars by year. I don't see all the details?

SELECT 
    Year, COUNT(*) AS Total_cars
FROM
    car_dekho
GROUP BY year;

-- Q5. Client asked to car dealer agent how many diesel cars will be there in 2020?

SELECT 
    Year, COUNT(*) AS Diesel_cars
FROM
    car_dekho
WHERE
    year = '2020' AND fuel = 'Diesel';

-- Q6. Client requested a car dealer agent how many petrol cars will be there in 2020?

SELECT 
    Year, COUNT(*) AS Petrol_cars
FROM
    car_dekho
WHERE
    year = '2020' AND fuel = 'Petrol';

-- Q7. The manager told the employee to give a print all fuel cars (petrol, diesel, cng) come by all year?

-- Method one
SELECT 
    Year, Fuel, COUNT(*) AS Total_cars
FROM
    car_dekho
WHERE
    Fuel IN ('petrol' , 'diesel', 'cng')
GROUP BY Year , Fuel;

-- Method two
SELECT Year, COUNT(*) AS Total_cars FROM car_dekho WHERE fuel = 'Petrol' GROUP BY Year;
SELECT Year, COUNT(*) AS Total_cars FROM car_dekho WHERE fuel = 'Diesel' GROUP BY Year;
SELECT Year, COUNT(*) AS Total_cars FROM car_dekho WHERE fuel = 'cng' GROUP BY Year;

-- Q8. Manager said there were more than 100 cars in a given year, which year had more than 100 cars?

SELECT 
    Year, COUNT(*) AS Total_cars
FROM
    car_dekho
GROUP BY Year
HAVING Total_cars > 100
ORDER BY Year DESC;

-- Q9. The manager said to the employee all cars count details between 2015 and 2023?

SELECT 
    COUNT(*) AS Total_cars
FROM
    car_dekho
WHERE
    Year BETWEEN 2015 AND 2023;

-- Q10. The manager said to the employee all cars details between 2015 and 2023; we need complete list?

SELECT 
    *
FROM
    car_dekho
WHERE
    Year BETWEEN 2015 AND 2023;