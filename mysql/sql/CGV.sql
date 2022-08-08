USE coca;

-- 공통코드 목록
select
	a.ccSeq	as seq
    ,b.codeGroup
    ,a.ccCodeName as codeName   
    ,a.ccUseNy as USENY
    ,a.ORDER 
from CC a
inner join CCG b  
on b.ccgSeq = a.ccgSeq
;

-- 로그인
SELECT
	a.IfMmId
    , a.ifMmPassWord
FROM coca.infrMember a
WHERE 1=1
	AND ifMmId="kik7511" and ifMmPassWord="peter7511@"
;

-- 메인 무비 차트
SELECT
	a.mNameKor    
FROM coca.Movie a
;

-- 무비 차트
SELECT	
	a.mNameKor
	, a.mOpenDate
FROM coca.Movie a
;

-- 영화상세정보 목록
SELECT 
	a.mSeq
    , a.mNameKor
    , a.mNameEn    
    , a.mAgeLimit
    , a.mRunningTime
    , a.mCountry
    , a.mOpenDate
    , a.mExplantion
FROM coca.Movie a   
WHERE 1=1
	AND mSeq = 2;
   
-- 영화 상세정보_ 배우    
SELECT
	a.mSeq
    ,a.mNameKor    
    ,c.sfDiv
    ,c.sfName
FROM coca.Movie a
INNER JOIN coca.searchStaff b
on b.Movie_mSeq = a.mSeq
INNER JOIN coca.staff c
on c.sfSeq = b.staff_sfSeq
WHERE 1=1
	AND mSeq = 2
;

-- 영화 상세정보_장르
SELECT
	a.mSeq
    ,a.mNameKor
    ,d.gnDiv
FROM coca.Movie a
INNER JOIN coca.genre d
on d.Movie_mSeq = a.mSeq
WHERE 1=1
	AND mSeq = 2
;

-- 구매

-- 영화 목록
SELECT
	a.mSeq
    , a.mNameKor
    , a.mAgeLimit
FROM coca.Movie a
Where 1=1
	and a.mSeq=2
;

-- 극장 목록
SELECT
	a.thSeq
    ,a.thLocation
    ,a.thName
FROM Theater a
Where 1=1
	And a.thLocation = 30
    And a.thName = "CGV 강남"
;

-- 날짜 시간 
SELECT
 	a.dSeq as seq
    ,b.thName 
    ,d.scNumber
    ,a.dDateTime
    ,c.mNameKor    
    ,d.scScreenType    
    ,d.scTotalSeat    
FROM date a
INNER JOIN Movie c
ON a.Movie_mSeq=c.mSeq
INNER JOIN screen d
ON a.screen_scSeq=d.scSeq
INNER JOIN Theater b
ON b.thSeq = d.Theater_thSeq
WHERE a.dSeq = 3
;

-- 좌석선택
SELECT
	a.stSeq
    ,e.thName
    ,d.scNumber
    ,d.scRow
    ,d.scCol
    ,a.stY_alphabet
    ,a.stX_num
    ,a.stkind
    ,a.stPrice
FROM seat a
INNER JOIN purchase b
on a.purchase_seq = b.seq
INNER JOIN date c
on b.date_dSeq = c.dSeq
INNER JOIN screen d
on c.screen_scSeq = d.scSeq
INNER JOIN Theater e
on d.Theater_thSeq = e.thSeq
;

-- 구매 목록
SELECT
	a.seq
    ,b.ifMmName
    ,b.ifMmId
    ,d.mNamekor
    ,f.thName
    ,c.dDateTime
    ,e.scNumber    
    ,g.stkind
    ,g.stY_alphabet
    ,g.stX_num    
    ,g.stPrice    
FROM coca.purchase a
INNER JOIN coca.infrMember b
ON a.infrMember_ifMmSeq = b.ifMmSeq
INNER JOIN coca.date c
ON a.date_dSeq = c.dSeq
INNER JOIN coca.Movie d
ON c.Movie_mSeq = d.mSeq
INNER JOIN screen e
on c.screen_scSeq = e.scSeq
INNER JOIN Theater f
on e.Theater_thSeq = f.thSeq
INNER JOIN seat g
on g.purchase_seq = a.seq
WHERE 1=1
 and ifMmId = "kik7511"
;
 
-- 회원 관리 




