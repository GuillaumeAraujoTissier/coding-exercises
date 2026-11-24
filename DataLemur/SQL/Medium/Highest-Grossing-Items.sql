-- Exercise: Highest-Grossing Items
-- Link: https://datalemur.com/questions/sql-highest-grossing


SELECT 
category
,product
,total_spend
FROM (
        SELECT 
        category
        ,product
        ,SUM(spend) AS total_spend
        ,RANK() OVER( 
                        partition by category 
                        ORDER BY SUM(spend) DESC) AS rank
        FROM product_spend
        WHERE EXTRACT(year from transaction_date) = 2022
        GROUP BY category ,product
) AS sales
WHERE rank <= 2
;


