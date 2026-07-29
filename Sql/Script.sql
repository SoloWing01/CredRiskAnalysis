SELECT * FROM my_table 

SELECT COUNT(*) from my_table mt where  income > 25000

SELECT * from my_table mt ORDER by mt.income  

SELECT COUNT(*) from my_table mt  GROUP by mt.credit_lines_outstanding 
-- Start with zero to five
SELECT * from my_table mt  GROUP by mt.credit_lines_outstanding HAVING years_employed > 5

SELECT MAX(mt.fico_score) from my_table mt

SELECT COUNT(*) AS total_records FROM my_table mt

SELECT * FROM my_table mt WHERE mt."default" = 1;

SELECT * FROM my_table mt WHERE default = 0;

SELECT mt.customer_id, mt.fico_score FROM my_table mt WHERE mt.fico_score > 700;

SELECT AVG(mt.income) AS average_income FROM my_table mt;

SELECT MAX(mt.loan_amt_outstanding) AS highest_loan FROM my_table mt;

SELECT SUM(mt.total_debt_outstanding) AS total_debt FROM my_table mt;

SELECT mt.customer_id, mt.total_debt_outstanding FROM my_table mt ORDER BY mt.total_debt_outstanding DESC LIMIT 10;

SELECT * FROM my_table mt WHERE mt.years_employed > 10;

SELECT AVG(mt.fico_score) AS avg_fico FROM my_table mt WHERE mt."default"= 1;

SELECT mt.customer_id,mt.total_debt_outstanding,mt.income,ROUND(mt.total_debt_outstanding / mt.income, 2) AS debt_income_ratio FROM my_table mt;

SELECT * FROM my_table mt WHERE mt.fico_score < 600 AND mt."default" = 1;

SELECT COUNT(*) AS total_customers,AVG(mt.income) AS avg_income,AVG(mt.fico_score) AS avg_fico,AVG(mt.total_debt_outstanding) AS avg_debt,SUM(mt."default") AS total_defaults FROM my_table mt;