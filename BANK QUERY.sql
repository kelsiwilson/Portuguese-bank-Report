-- Table First 10 rows
SELECT * FROM bank;

--Statistic Summary
SELECT 
  COUNT(*) AS total_records,
  MIN(age) AS min_age,
  MAX(age) AS max_age,
  AVG(balance) AS avg_balance
FROM bank;


-- Categorical distribution
-- Distribution of job roles
SELECT job, COUNT(*) AS count_with_job
FROM bank
GROUP BY job
ORDER BY count_of_job DESC;


-- Outcome distribution
SELECT y, COUNT(*) AS count_with_y
FROM bank
GROUP BY y;


-- Average balance per education level
SELECT education, AVG(balance) AS avg_balance
FROM bank
GROUP BY education
ORDER by avg_balance;


-- Subscription by housing loan status
SELECT housing, y, COUNT(*) AS count
FROM bank
GROUP BY housing, y;



-- Age- group by balance

SELECT 
  CASE 
    WHEN age BETWEEN 19 AND 24 THEN 'Youth'
    WHEN age BETWEEN 25 AND 44 THEN 'Adult'
    WHEN age BETWEEN 45 AND 90 THEN 'Elder'
    ELSE 'Out of Range'
  END AS age_group,
  COUNT(*) AS total,
  CEILING(AVG(balance)) AS rounded_avg_balance
FROM bank
GROUP BY 
  CASE 
    WHEN age BETWEEN 19 AND 24 THEN 'Youth'
    WHEN age BETWEEN 25 AND 44 THEN 'Adult'
    WHEN age BETWEEN 45 AND 90 THEN 'Elder'
    ELSE 'Out of Range'
  END;





-- loan by poutcome

SELECT poutcome, count(*) as COUNT_WITH_LOAN
from bank
WHERE loan = "True"
GROUP by poutcome
ORDER by COUNT_WITH_LOAN DESC;


-- Subscription (y) by month

SELECT month, count(*) as COUNT_with_y
from bank
WHERE y = "True"
GROUP by month
ORDER by COUNT_with_y;



--Marital status to housing
SELECT marital, count(*) as COUNT_with_housing
from bank
WHERE housing ="True"
GROUP by marital
ORDER by COUNT_with_housing;

-- count education level
SELECT education, COUNT(*) as COUNT
from bank
GROUP by education;


-- CARD VISUAL

--total call
SELECT COUNT(*) AS total_calls 
FROM bank;



select avg(balance) as avg_balance
from bank;

-- Subscription top job

SELECT job, COUNT(*) AS COUNT_with_y
FROM  bank
WHERE y = 'Yes'
GROUP BY job
ORDER BY COUNT_with_y DESC;







