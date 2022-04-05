-- SELECT 'Hello','World'; 
-- SELECT 'Hello' as FirstWord, 'World' as SecondWord;
USE contacts;

UPDATE person -- had to update this to fix the table. The files that I downloaded was not correct. Prior i was only getting 3 rows  
SET person_first_name = 'Jon', person_last_name = 'Ahem', person_contacted_number = 10, person_date_last_contacted = '2013-07-14 11;43:31', person_date_added = '2013-03-14 11:43:31'
WHERE person_id = 4; -- be specific here or else you will change everything  

SELECT p.person_first_name as FirstName -- now I am getting 4 rows. Prior I was only getting 3. I had to look at the code. He only had 3 entries  
FROM person p; -- give an alias p to the person table so you do not have to type out the whole table. person.person_first_name = p.person_first_name 

SELECT distinct p.person_first_name as FirstName -- there are two jon. this selects the values from column person_first_name, from the person table and displays the values in a column names FirstName 
FROM person p; -- because there are two jons. Jon is distinct and it just shows one.

SELECT distinct p.person_first_name, p.person_last_name as FirstName -- there are two jon. this selects the values from column person_first_name, and column person_last_name, so it shows all four again. Because the last name of both jon's is distinct.
FROM person p; 
 
SELECT p.person_first_name 
FROM person p
WHERE p.person_last_name = 'Flanders';

SELECT p.person_last_name -- selects the value of the column person_last_name  
FROM person p -- from the person table (alias p) 
WHERE p.person_first_name = 'Jon'; -- where the first name = 'Jon'. In this case there are two Jon's.

SELECT p.person_last_name
FROM person p
WHERE p.person_first_name = 'Jon'
AND p.person_contacted_number > 5;

SELECT person_last_name
FROM person
WHERE person_contacted_number = 1;

SELECT p.person_first_name 
FROM person p
WHERE p.person_contacted_number = 0;

SELECT p.person_first_name as 'Contacted less than ten times'
FROM person p
WHERE p.person_contacted_number < 10;

-- select persons named jon or has been contacted 0 times
SELECT p.person_first_name
FROM person p
WHERE p.person_first_name = 'Jon'
or p.person_contacted_number < 1;

-- BETWEEN acts on column and two values. True if column value is between two values. Inclusive - includes two values (like >= & <=) 
-- Q: Who are all the people in my contact list that I have contacted at least once but no more than 20 times.

SELECT p.person_first_name 
FROM person p
WHERE p.person_contacted_number
BETWEEN 1 AND 10;
