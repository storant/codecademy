SELECT DISTINCT year from population_years;
-- 3 -- 11 years

SELECT *
FROM population_years
WHERE country = "Gabon"
ORDER BY population DESC
LIMIT 1;
-- 4 -- 1.54526 million

SELECT *
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;
-- 5 --

SELECT DISTINCT *
FROM population_years
WHERE population > 100 AND year = 2010;
-- 6 -- 

SELECT DISTINCT country 
FROM population_years
WHERE country LIKE "%Islands%";
-- 7 -- 9 countries

SELECT *
FROM population_years
WHERE year = 2010
	--AND year = 2010 
	AND country = "Indonesia";
-- 8 -- YEAR 2000 = 214.67661 YEAR 2010 = 242.96834
-- 8 -- diff is 242.96834-214.67661=28.29173

