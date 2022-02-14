--creates table called person and contains 6 data columns
CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(15),
    age INTEGER,
    height INTEGER,
    city VARCHAR(20),
    fav_color VARCHAR(10)
);

--adds people to person table
INSERT INTO person (name, age, height, city, fav_color) 
VALUES ('Karla', 28, 163, 'Boise', 'pink'),
('Devon', 46, 180, 'Miami', 'blue'),
('Carlos', 21, 174, 'Zaragoza', 'red'),
('Ethan', 15, 160, 'Dallas', 'blue'),
('Louise', 23, 150, 'New York City', 'green');

--orders table from tallest person to shortest person
SELECT * FROM person 
ORDER BY height DESC;

--orders table from shortest to tallest
SELECT * FROM person 
ORDER BY height;

--orders table from oldest to youngest
SELECT * FROM person
ORDER BY age DESC;

--selects all people older than 20
SELECT * FROM person
WHERE age > 20;

--selects all people that are 18 years old
SELECT * FROM person
WHERE age = 18;

--selects all people that are less than 20 years old and older than 30 years
SELECT * FROM person
WHERE age < 20 AND age > 30;

--selects all people that are not 27
SELECT * FROM person
WHERE age != 27;

--selects all people that do not have a favorite color of red
SELECT * FROM person
WHERE fav_color != 'red';

--selects all people that do not have a favorite color of red and blue
SELECT * FROM person
WHERE fav_color != 'red' AND fav_color != 'blue';

--Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE fav_color = 'orange' OR fav_color = 'green';

--Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE fav_color IN ('orange', 'green', 'blue');

--Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE fav_color IN ('yellow', 'purple');