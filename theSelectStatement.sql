USE sql_store; -- selects the sql_store database 
-- The select statement. SELECT, FROM, WHERE, ORDER BY; are all clases. They should be on thier own lines for clarity. (but dont have to be)
--  
SELECT *
FROM customers -- these clauses here have to be used in order
-- WHERE customer_id = 3--  i can omit this clause though. I do not think i can use it after ORDER BY 
ORDER BY first_name

SELECT 'Hello, World';
