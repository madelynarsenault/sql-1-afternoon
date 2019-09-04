-- QUESTION 1
CREATE TABLE person (
ID SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INTEGER NOT NULL,
  height INTEGER NOT NULL,
  city VARCHAR(255) NOT NULL,
  favorite_color VARCHAR (255) NOT NULL

)

-- question 2 
INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES
('Tramy Nguyen', 24, 125, 'LA', 'pink'),
('Madelyn Arsenault', 20, 173, 'salt lake', 'blue'),
('Rob Johnson', 27, 180, 'Austin', 'gray'),
('Frederik Ernst', 24, 182, 'LA', 'red'),
('Post Malone', 24, 183, 'Austin', 'black')

-- question 3
SELECT * FROM person ORDER BY height DESC;

-- question 4
SELECT * FROM person ORDER BY height ASC;

-- question 5
SELECT * FROM person ORDER BY age DESC;

-- QUESTION 6
SELECT * FROM person WHERE age > 20;

-- question 7
SELECT * FROM person WHERE age = 18;

-- question 8
SELECT * FROM person WHERE age < 20 OR age > 30;

-- question 9
SELECT * FROM person WHERE age !=27;

-- question 10
SELECT * FROM person WHERE favorite_color !='red';

-- question 11 
SELECT * FROM person WHERE favorite_color !='red' AND favorite_color != 'blue';

-- question 12
Select * from person WHERE favorite_color = 'orange' OR favorite_color='green';

-- question 13
SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');

-- question 14
SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple')

--------------------------SECTION TWO------------------------------------------------
-- QUESTION 1
CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(255),
  product_price NUMERIC,
  quantity INTEGER
);

-- QUESTION 2
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(0, 'Product one', 13.80, 5),
(1, 'Product two', 4.90, 2),
(2, 'Product three', 7.48, 7),
(3, 'Product four', 20.20, 3),
(4, 'Product five', 3.33, 3)

-- QUESTION 3
SELECT * FROM orders;

-- QUESTION 4
SELECT SUM(quantity) FROM orders;

-- QUESTION 5
SELECT SUM(product_price * quantity) FROM orders;

-- QUESTION 6
SELECT SUM(product_price * quantity) FROM orders WHERE person_id=2;

-------------------------------SECTION THREEEEEEEEEEE-----------------------------------------------

-- QUESTION 1
INSERT INTO artist
(name)
VALUES
('Post Malone')
('Blink 182')
('Mac DeMarco')

-- QUESTION 2
SELECT * FROM artist ORDER BY name DESC Limit 10;

-- QUESTION 3
SELECT * FROM artist ORDER BY name ASC Limit 5;

-- QUESTION 4 
SELECT * FROM artist WHERE name LIKE 'BLACK%';

-- QUESTION 5 
SELECT * FROM artist WHERE name LIKE '%BLACK%';

----------------------SECTION FOURRRRRRRRRR--------------------------------
-- QUESTION 1
SELECT first_name, last_name FROM employee WHERE city='Calgary';

-- QUESTION 2
SELECT MAX(birth_date) FROM employee;

-- QUESTION 3
SELECT MIN(birth_date) FROM employee;

-- QUESTION 4
SELECT * FROM employee WHERE reports_to=2;

-- QUESTION 5
SELECT COUNT(*) FROM employee WHERE city='Lethbridge'

-------------------------SECTION FIVEEEEEEEEEEEEEEE---------------------------
-- QUESTION 1
SELECT COUNT(*) FROM invoice WHERE billing_country='USA'

-- QUESTION 2
SELECT MAX(total) FROM invoice;

-- QUESTION 3
SELECT MIN(total) FROM invoice;

-- QUESTION 4
SELECT MAX(total) FROM invoice WHERE total > 5;

-- QUESTION 5
 SELECT MAX(total) FROM invoice WHERE total < 5;

--  QUESTION 6
SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

-- QUESTION 7
SELECT avg(total) FROM invoice;

-- QUESTION 8
SELECT SUM(total) FROM invoice;






