TABLE - PERSON 

CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR (100),
  age INTEGER,
  height INTEGER,
  city VARCHAR (100),
 	favorite_color VARCHAR (100)
  );

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Kendra', 24, 173, 'Grays Lake', 'purple'),
('Maxwell', 23, 187, 'Muncie', 'blue'),
('Paige', 21, 182, 'West Lafayette', 'green'),
('Grant', 21, 185, 'Evanston', 'yellow'),
('Kaitlyn', 20, 185, 'Big Rapids', 'red')

SELECT * from person
order by height DESC;

SELECT * from person
order by height ASC;

SELECT * from person
order by age DESC;

SELECT * from person
where age > 20;

SELECT * from person
where age = 18;

SELECT * from person
where age < 20 
OR age > 30;

SELECT * from person
where age != 27;

SELECT * from person
where favorite_color != 'red';

SELECT * from person
where favorite_color != 'red'
AND favorite_color != 'blue';

SELECT * from person
where favorite_color = 'orange'
OR favorite_color = 'green';

SELECT * from person
where favorite_color IN ('orange', 'green', 'blue');

SELECT * from person
where favorite_color IN ('yellow', 'purple');

----------------------------------------------
TABLE - ORDERS; NOTE 'Quantity' was misspelled as 'quanity' in this table

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR (200),
  product_price FLOAT,
  quanity INTEGER
  );

INSERT INTO orders
(person_id, product_name, product_price, quanity)
VALUES
(33, 'Pure Relief Heating Pad XL', 34.99, 1), 
(52, 'Christmas Ornaments Blue', 14.99, 3)

SELECT * from orders;

SELECT sum(quanity) 
FROM orders;

SELECT sum(quanity*product_price)
FROM orders;

SELECT sum(quanity*product_price)
FROM orders
WHERE person_id = 33;

------------------------------------
TABLE - ARTIST

INSERT INTO artist 
(name, artist_id)
VALUES
('Kacey Musgraves', 276), ('Maren Morris', 277),
('Kelsea Ballerini', 278);

SELECT * FROM artist
WHERE artist_id BETWEEN 5 and 14
ORDER BY name DESC

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%'

-----------------------------------------
TABLE - EMPLOYEE

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT min(birth_date) FROM employee;

SELECT max(birth_date) FROM employee;

SELECT employee_id FROM employee
WHERE last_name = 'Edwards';

SELECT * FROM employee
where reports_to = 2;

SELECT count('Lethbridge') FROM employee;

-------------------------------------------
TABLE - INVOICE

SELECT count(billing_country) FROM invoice
where billing_country = 'USA';

SELECT max(total) FROM invoice;

SELECT min(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT count(*) FROM invoice
WHERE total < 5;

SELECT count(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT avg(total) FROM invoice;

SELECT sum(total) FROM invoice;