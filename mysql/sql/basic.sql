use coca;
CREATE TABLE IF NOT EXISTS `coca`.`member2` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `gender` TINYINT NULL,
  `age` INT NULL,
  `phone` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

-- 전체 컬럼 조회
SELECT * FROM member2;

-- 컬럼 추가
ALTER TABLE member2 ADD nickname varchar(45);
ALTER TABLE member2 ADD nameEn varchar(45) AFTER name;

-- 컬럼 변경
ALTER TABLE member2 MODIFY COLUMN nickname int;
ALTER TABLE member2 MODIFY COLUMN nickname varchar(45);

-- 컬럼 이름 변경
ALTER TABLE member2 CHANGE nameEn nameCh varchar(45);
ALTER  TABLE member2 CHANGE COLUMN nameCh nameEn varchar(45);

-- 컬럼 삭제
ALTER TABLE member2 DROP COLUMN nickname;

-- row 삭제
DELETE FROM member2 WHERE seq = 1;

-- commit / rollback

-- 데이터 수정
UPDATE member2 SET
	name = "peter"
    WHERE seq = 1;
	
SELECT * FROM member2;