-- How many entries in the database are from Africa? -- there are 56 countries in africa
SELECT count(*) AS 'Countries in Africa'
FROM countries
WHERE continent = 'Africa'
GROUP BY continent;

-- What was the total population of Oceania in 2005? AVG POP 34.04864
WITH oceania_countries AS(
	SELECT id
	FROM countries
	WHERE continent = 'Oceania')
SELECT SUM(population) AS 'Tot Pop in Oceania'
FROM oceania_countries
JOIN population_years
	ON oceania_countries.id = population_years.country_id
WHERE year = 2008;
/* KINDA BETTER WAY
SELECT SUM(population)
FROM countries
JOIN population_years
	ON countries.id = population_years.country_id
WHERE countries.continent = 'Oceania' AND 
	population_years.year = 2008; */

-- What is the average population of countries in South America in 2003?  = 25.8906514285714
SELECT AVG(population)
FROM countries
JOIN population_years
	ON countries.id = population_years.country_id
WHERE continent = 'South America' AND
	year = 2003;

-- What country had the smallest population in 2007? = 0.002
SELECT MIN(population_years.population) AS 'Min Pop',
	name AS 'Country Name'
FROM countries
JOIN population_years
	ON countries.id = population_years.country_id
WHERE year = 2007;

-- What is the average population of Poland during the time period covered by this dataset? = 38.5606790909091
SELECT AVG(population) AS 'Average Population'
FROM countries
JOIN population_years
	ON countries.id = population_years.country_id
WHERE name = 'Poland';

-- How many countries have the word "The" in their name? = 4
SELECT COUNT(*)
FROM countries
WHERE name LIKE '%the%';

-- What was the total population of each continent in 2010?
SELECT continent, 
	SUM(population) AS 'Sum Population'
FROM countries
JOIN population_years
	ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY continent;


