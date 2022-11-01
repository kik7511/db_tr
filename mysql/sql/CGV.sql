SELECT * FROM coca.Movie;
 
SHOW index FROM coca.Movie;

CREATE INDEX abc on Movie (mNameKor, mAgeLimit, src);

ALTER TABLE Movie DROP INDEX abc;

create view v_Movie
as
SELECT
	d.thLocation
	,a.mNameKor
	,a.mSeq
	,a.mAgeLimit
	,a.src
	FROM Movie a
	INNER JOIN date b ON b.Movie_mSeq = a.mSeq 
	INNER JOIN screen c ON c.scSeq = b.screen_scSeq
	INNER JOIN Theater d ON d.thSeq = c.Theater_thSeq;

DELIMITER $$ 
DROP FUNCTION IF EXISTS FUNCTION_TEST$$ 
CREATE FUNCTION FUNCTION_TEST() 
	RETURNS VARCHAR(20) 
BEGIN 
	DECLARE Result VARCHAR(10); 
	SET Result = 'OK'; 
	RETURN Result; 
END $$ 
DELIMITER ;

SELECT FUNCTION_TEST();


SELECT * FROM coca.infrMember;
alter table card drop foreign key fk_card_infraMember;
select * from information_schema.table_constraints where table_name = 'accountBook';