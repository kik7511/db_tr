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
WHERE 1=1
	AND a.mSeq = 1
;

-- 무비 차트
SELECT	
	a.mNameKor
	, a.mOpenDate
FROM coca.Movie a
WHERE 1=1
	AND a.mSeq = 1
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
	a.scSeq
    , b.thName
    , a.scRow
    , a.scCol
    , a.scTotalSeat
    , c.ccCodename as screenType
FROM screen a
INNER JOIN Theater b
ON a.Theater_thSeq=b.thSeq
INNER JOIN CC c
ON a.scScreenType=c.ccSeq
;

-- 날짜 목록
SELECT
	a.dSeq
    ,d.thName
    ,c.mNameKor    
    ,b.scNumber
    ,e.ccCodeName
    ,a.dDateTime            
FROM coca.date a
INNER JOIN screen b
ON a.screen_scSeq = b.scSeq
INNER JOIN Movie c
ON a.Movie_mSeq = c.mSeq
INNER JOIN Theater d
ON b.Theater_thSeq = d.thSeq
INNER JOIN CC e
ON e.ccSeq = b.scScreenType
;

-- 좌석 목록



-- 구매 목록
SELECT
	a.seq
	, b.ifMmName
    , b.ifMmId
    , e.ccCodeName
    , b.ifMmPhone
    , a.price
    , d.ccCodeName
FROM coca.purchase a
INNER JOIN coca.infrMember b
ON a.infrMember_ifMmSeq = b.ifMmSeq
INNER JOIN coca.date c
ON a.date_dSeq = c.dSeq 
INNER JOIN coca.CC d
ON a.payment=d.ccSeq
INNER JOIN coca.CC e
ON b.ifMmTel=e.ccSeq
;
 
-- 회원가입 목록
SELECT*FROM coca.infrMember WHERE ifMmId="" OR ifMmNickname="";
select 
	a.ifMmSeq
    ,a.ifMmName
    ,p1.ccCodeName as ifMmGender
    ,a.ifMmDob
    ,a.ifMmId
    ,a.ifMmPassWord
    ,p3.ccCodeName as ifMmTel
    ,a.ifMmPhone
    ,a.ifMmEmail
    ,p2.ccCodeName as ifMmEmailAddress
    ,p4.ccCodeName as ifMmMarketing
    ,a.ifMmSingupDate
    ,a.ifMmAddress
    ,a.ifMmAddress_homenumber
    ,a.ifMmAddress_detail
    ,a.ifMmNickname        
from coca.infrMember a
-- left join CC on CC.ccgSeq = CCG.ccgSeq
inner join CC p1 
on a.ifMmGender = p1.ccSeq
inner join CC p2 
on a.ifMmEmailAddress = p2.ccSeq
inner join CC p3 
on a.ifMmTEl = p3.ccSeq
inner join CC p4 
on a.ifMmMarketing = p4.ccSeq
;



