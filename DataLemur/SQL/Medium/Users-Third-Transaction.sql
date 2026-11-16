-- Exercise: User's Third Transaction
-- Link: https://datalemur.com/questions/sql-third-transaction


WITH third_transaction AS ( 
  SELECT 
  user_id
  , spend
  , transaction_date
  , ROW_NUMBER() OVER(
            PARTITION BY user_id 
            ORDER BY transaction_date ASC
            ) AS rank

  FROM transactions
)

SELECT
user_id
, spend
, transaction_date
FROM third_transaction
WHERE rank = 3
;
