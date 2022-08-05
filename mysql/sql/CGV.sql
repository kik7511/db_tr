USE coca;

-- 로그인
SELECT*
FROM coca.infrMember 
WHERE ifMmId="kik7511" and ifMmPassWord="peter7511@"
;

-- 공통코드 목록
select
	a.ccSeq	as seq
    ,b.codeGroup
    ,a.ccCodeName as codeName   
    ,a.ccUseNy as USENY
    ,a.ORDER 
from CC a
-- left join CC on CC.ccgSeq = CCG.ccgSeq
inner join CCG b  
on b.ccgSeq = a.ccgSeq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
;

-- 영화상세정보 목록
SELECT*
FROM coca.Movie
WHERE Movie.mNameKor LIKE "%%" OR Movie.mNameEn LIKE ""
;

-- 극장 목록
SELECT
	thSeq
    ,thName
    ,y1.ccCodeName as location
    ,thOpenDate
    ,y2.ccCodeName as situation
FROM Theater x
inner join CC y1 
on x.thLocation = y1.ccSeq
inner join CC y2 
on x.thSituation = y2.ccSeq
Where x.thName Like "" or y1.ccCodeName Like "서울"
;

-- 스크린 목록
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
SELECT*
FROM coca.date a
INNER JOIN screen b
ON a.screen_scSeq = b.scSeq
INNER JOIN Movie c
ON a.Movie_mSeq = c.mSeq
;

-- 좌석 목록

-- 구매 목록

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



