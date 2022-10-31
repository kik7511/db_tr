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
CREATE FUNCTION getInfrMemberName (
seq bigint
) 
RETURNS varchar(100)
BEGIN
	
    declare mNameKor varchar(100);

	select
		ifmmName into mNameKor
	from
		Movie
	where 1=1
		and mSeq = mSeq
	;

	RETURN rtName;
END$$
DELIMITER ;

SET GLOBAL log_bin_trust_function_creators = 1
;