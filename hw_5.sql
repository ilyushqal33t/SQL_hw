DROP DATABASE IF EXISTS hw_5;
CREATE DATABASE IF NOT EXISTS hw_5;

USE hw_5;


CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT *
FROM cars;


CREATE VIEW cars_view AS
  SELECT * 
    FROM Cars
  WHERE cost < 25000;


ALTER VIEW cars_view AS
  SELECT * 
    FROM Cars
  WHERE cost < 30000;
  
  
  CREATE VIEW skoda_audi AS
    SELECT *
      FROM cars
	WHERE name = "Skoda" OR "Audi";