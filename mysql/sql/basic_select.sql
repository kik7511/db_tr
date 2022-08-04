select
	CC.ccSeq
	,CCG.ccgSeq
    ,CCG.codeGroup
    ,CC.ccCodeName
    ,CCG.ccgUseNy
    ,CCG.ccgOrder
    ,CC.ccUseNy
    ,CC.ORDER
from CC 
-- left join CC on CC.ccgSeq = CCG.ccgSeq
inner join CCG  
on CCG.ccgSeq = CC.ccgSeq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
;