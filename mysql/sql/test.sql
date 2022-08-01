CREATE DATABASE test;
USE test;
CREATE TABLE test (
	seq int AUTO_INCREMENT
    ,name varchar(10)
    ,id varchar(10)
    ,password varchar(20)
    ,dob DATE
    ,tel int
    ,PRIMARY KEY(seq) 
)
ENGINE = INnoDB CHARSET=utf8mb4
;
INSERT INTO test
VALUES(
	1
    ,"김대겸"
    ,"kik7511"
    ,"peter7511"
    ,19931017
    ,54137511
);
ALTER TABLE test ADD COLUMN email VARCHAR(45);
DELETE FROM test
WHERE seq=2;
UPDATE test SET
	email="kik7511@naver.com"
    WHERE seq=1;
SELECT*FROM test;  


