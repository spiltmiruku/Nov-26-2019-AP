CREATE TABLE person (
  id SERIAL PRIMARY KEY,
	 name TEXT,
  height_cm FLOAT,
  city TEXT,
  favorite_color TEXT
  );

INSERT INTO person(
  name, height_cm, city, favorite_color
  ) VALUES (
    'Cass',
    167.6,
    'Fishbowl Space',
    'mint'
  );

SELECT * FROM person
ORDER BY height_cm DESC;

SELECT * FROM person 
ORDER BY height_cm ASC;

ALTER TABLE person
ADD COLUMN age int;

UPDATE person
SET age = 27
WHERE id = 6;

SELECT * FROM person 
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person 
WHERE favorite_color != 'red'
AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'orange'
OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN (‘orange’, ‘green’, ‘blue’);

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');





CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id TEXT,
  product_name TEXT,
  product_price_usd FLOAT,
  quantity INT
  );

INSERT INTO orders (
  person_id,
  product_name,
  product_price_usd,
  quantity
  ) VALUES (
    'Jerry Smith',
    'Mr. Meeseeks Box',
    899,
    1
    );
    
SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price_usd) FROM orders;

SELECT SUM(product_price_usd) FROM orders
WHERE person_id = 'Rick Sanchez';




INSERT INTO artist
(name)
   VALUES 
   ('Uchu Combini'),
    ('Saint Motel'),
    ('Tokyo Police Club');

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';





SELECT * FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;

SELECT * FROM employee
ORDER BY birth_date ASC
LIMIT 1;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';



SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice WHERE total < 5;

SELECT COUNT(*) FROM invoice WHERE billing_state IN('CA','TX','AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;

 