-- Question 12
-- Given a Weather table, write a SQL query to find all dates' Ids with higher temperature compared to its previous (yesterday's) dates.

-- +---------+------------------+------------------+
-- | Id(INT) | RecordDate(DATE) | Temperature(INT) |
-- +---------+------------------+------------------+
-- |       1 |       2015-01-01 |               10 |
-- |       2 |       2015-01-02 |               25 |
-- |       3 |       2015-01-03 |               20 |
-- |       4 |       2015-01-04 |               30 |
-- +---------+------------------+------------------+
-- For example, return the following Ids for the above Weather table:

-- +----+
-- | Id |
-- +----+
-- |  2 |
-- |  4 |
-- +----+

-- Solution
select a.Id
from weather a, weather b
where a.Temperature>b.Temperature and  datediff(a.recorddate,b.recorddate)=1
--or
SELECT w1.id
FROM weather w1, weather w2
where datediff(w1.recordDate, w2.recordDate) = 1 
and w1.temperature > w2.temperature ;
