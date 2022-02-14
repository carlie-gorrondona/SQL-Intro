CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(20),
    product_price FLOAT,
    quantity INTEGER
);

--adds records to orders table
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'pizza', 10.99, 1),
(1, 'breadsticks', 2.99, 2),
(1, 'cookie pie', 5.99, 1),
(2, 'spaghetti', 8.99, 1),
(3, 'lasagna', 10.99, 1);

--select all records from the table
SELECT * FROM orders;

--Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

--calculates total order price
SELECT SUM(product_price) FROM orders;

--calculate total order price by a single person_id 
--includes quantity because person 1 has two breadsticks
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 1;