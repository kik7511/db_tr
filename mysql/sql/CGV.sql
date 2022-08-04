USE coca;

-- 로그인
SELECT*FROM coca.infrMember WHERE ifMmId="kik7511" and ifMmPassWord="peter7511@"
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

-- 극장 목록

-- 스크린 목록

-- 날짜 목록

-- 좌석 목록

-- 구매 목록

-- 회원가입 목록
SELECT*FROM coca.infrMember WHERE ifMmId="" OR ifMmNickname="";
select*		
from infrMember a
-- left join CC on CC.ccgSeq = CCG.ccgSeq
inner join CC b 
on b.ccgSeq = a.ifMmGender and a.ifMmEmailAddress and a.ifMmTel and a.ifMmMarketing 
;



