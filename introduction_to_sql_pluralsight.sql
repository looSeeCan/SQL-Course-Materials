-- SELECT 'Hello','World'; 
-- SELECT 'Hello' as FirstWord, 'World' as SecondWord;
USE contacts;

UPDATE person -- had to update this to fix the table. The files that I downloaded was not correct. Prior i was only getting 3 rows  
SET person_first_name = 'Jon', person_last_name = 'Ahem', person_contacted_number = 10, person_date_last_contacted = '2013-07-14 11;43:31', person_date_added = '2013-03-14 11:43:31'
WHERE person_id = 4; -- be specific here or else you will change everything  

SELECT p.person_first_name as FirstName -- now I am getting 4 rows. Prior I was only getting 3. I had to look at the code. He only had 3 entries  
FROM person p; -- give an alias p to the person table so you do not have to type out the whole table. person.person_first_name = p.person_first_name 

SELECT distinct p.person_first_name as FirstName
FROM person p;


SELECT * 
FROM person 

