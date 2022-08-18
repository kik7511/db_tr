SELECT * FROM coca.seat;
DELETE FROM purchase WHERE seq = 7;
UPDATE purchase SET
	price = 45000
    WHERE seq = 1;
CREATE TABLE IF NOT EXISTS `coca`.`infrmemberUploaded` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` TINYINT NULL,
  `defaultNY` TINYINT NULL,
  `sort` TINYINT NULL,
  `originalName` VARCHAR(100) NULL,
  `uuidName` VARCHAR(100) NULL,
  `ext` VARCHAR(45) NULL,
  `size` BIGINT NULL,
  `delNY` TINYINT NOT NULL,
  `ifMmSeq` INT NOT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;
