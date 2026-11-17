-- Exercise: Second Highest Salary
-- Link: https://datalemur.com/questions/sql-second-highest-salary


With salary_rank AS (
    SELECT
      salary
    ,ROW_NUMBER() OVER (
          ORDER BY salary DESC
          ) AS ranking
    FROM employee
    WHERE salary IS NOT NULL
    GROUP BY salary
    )
    
    SELECT
      salary AS second_highest_salary
    FROM salary_rank
    WHERE ranking = 2
    ;
