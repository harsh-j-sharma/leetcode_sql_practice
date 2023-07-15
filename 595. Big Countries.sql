-- Question 5
-- There is a table World

-- +-----------------+------------+------------+--------------+---------------+
-- | name            | continent  | area       | population   | gdp           |
-- +-----------------+------------+------------+--------------+---------------+
-- | Afghanistan     | Asia       | 652230     | 25500100     | 20343000      |
-- | Albania         | Europe     | 28748      | 2831741      | 12960000      |
-- | Algeria         | Africa     | 2381741    | 37100000     | 188681000     |
-- | Andorra         | Europe     | 468        | 78115        | 3712000       |
-- | Angola          | Africa     | 1246700    | 20609294     | 100990000     |
-- +-----------------+------------+------------+--------------+---------------+
-- A country is big if it has an area of bigger than 3 million square km or a population of more than 25 million.

-- Write a SQL solution to output big countries' name, population and area.

-- For example, according to the above table, we should output:

-- +--------------+-------------+--------------+
-- | name         | population  | area         |
-- +--------------+-------------+--------------+
-- | Afghanistan  | 25500100    | 652230       |
-- | Algeria      | 37100000    | 2381741      |
-- +--------------+-------------+--------------+


-- Solution
Select name, population, area
from world
where population > 25000000 OR area>3000000

-----------------------or
select name, population, area from World
 where area>=3000000 
 union 
 select name, population, area from World 
 where population>=25000000

---The given query selects the `name`, `population`, and `area` columns from the `World` table. It combines two separate queries using the `UNION` operator to retrieve the countries that meet either of the following conditions:

---1. Countries with an area greater than or equal to 3,000,000 (3 million):
  ---- select name, population, area from World where area>=3000000
  

---2. Countries with a population greater than or equal to 25,000,000 (25 million):
  ---select name, population, area from World where population>=25000000
 

---The `UNION` operator combines the results of these two queries and removes any duplicate rows, giving the final result set of big countries that satisfy either the area or population condition.


