
--List all employee first and last names only that live in Calgary.
SELECT first_name, last_name FROM employee
WHERE city='Calgary';

--Find the birthdate for the youngest employee.
SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;

--Find the birthdate for the oldest employee.
SELECT * FROM employee
ORDER BY birth_date
LIMIT 1;

--Find everyone that reports to Nancy Edwards (use the ReportsTo column).
SELECT * FROM employee
WHERE reports_to = 2;

--Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';