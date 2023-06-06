DROP DATABASE IF EXISTS hw_4;
CREATE DATABASE IF NOT EXISTS hw_4;

USE hw_4;

SELECT * FROM auto;

SELECT MARK, COLOR, COUNT(1) AS product_count
FROM 
	(SELECT MARK, COLOR
     FROM auto
     WHERE MARK = 'BMW' or MARK = 'LADA'
	) AS auto_group
GROUP BY MARK, COLOR
ORDER BY MARK;

SELECT 
     MARK,
    (SELECT COUNT(*) FROM auto) - COUNT(MARK) AS OTHER_MARK_COUNT
FROM auto
GROUP BY MARK
ORDER BY MARK;


CREATE TABLE IF NOT EXISTS test_a (
	id INT, 
	data_1 VARCHAR(1)
);

CREATE TABLE IF NOT EXISTS test_b (
	id INT
);


INSERT INTO test_a(id, data_1) 
VALUES
(10, 'A'),
(20, 'A'),
(30, 'F'),
(40, 'D'),
(50, 'C');


INSERT INTO test_b(id) 
VALUES
(10),
(30),
(50);

SELECT test_a.*
FROM test_a
	LEFT JOIN test_b
    ON test_a.id = test_b.id
WHERE test_b.id IS NULL;
