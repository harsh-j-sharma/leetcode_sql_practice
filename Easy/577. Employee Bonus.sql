-- Question 4
-- Select all employee's name and bonus whose bonus is < 1000.

-- Table:Employee

-- +-------+--------+-----------+--------+
-- | empId |  name  | supervisor| salary |
-- +-------+--------+-----------+--------+
-- |   1   | John   |  3        | 1000   |
-- |   2   | Dan    |  3        | 2000   |
-- |   3   | Brad   |  null     | 4000   |
-- |   4   | Thomas |  3        | 4000   |
-- +-------+--------+-----------+--------+
-- empId is the primary key column for this table.
-- Table: Bonus

-- +-------+-------+
-- | empId | bonus |
-- +-------+-------+
-- | 2     | 500   |
-- | 4     | 2000  |
-- +-------+-------+
-- empId is the primary key column for this table.
-- Example ouput:

-- +-------+-------+
-- | name  | bonus |
-- +-------+-------+
-- | John  | null  |
-- | Dan   | 500   |
-- | Brad  | null  |
-- +-------+-------+


-- Solution
Select E.name, B.bonus
From Employee E left join Bonus B
on E.empId = B.empId
where B.bonus< 1000 or B.Bonus IS NULL

-----------or --------COALESCE --the COALESCE() function is used to handle the case of null bonuses and
  -----------------replace them with 0 for comparison
SELECT e.name, COALESCE(b.bonus, 0) AS bonus
FROM employee e
LEFT JOIN bonus b ON e.empid = b.empid
WHERE COALESCE(b.bonus, 0) < 1000 OR b.bonus IS NULL;
