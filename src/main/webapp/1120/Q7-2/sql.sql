--2024-11-20 과제 2.
--파일명 : GetSnackAmountStateStudentList
--구매한 수량에 따라 구매한 학생의 상태 출력하기
--별칭 : 학번, 이름, 구매수량, 상태
--1개 구매한 학생 : 저런
--2개 구매한 학생 : 나눠먹나?
--3개 구매한 학생 : 적당하네
--4개 구매한 학생 : 좀 많은데?
--5개 구매한 학생 : 먹보
--+ 학번을 기준으로 오름차순

select
st.student_id as 학번,
st.person_name as 이름,
gs.amount as 구매수량,
case
when gs.amount = 1 then '저런'
when gs.amount = 2 then '나눠먹나?'
when gs.amount = 3 then '적당하네'
when gs.amount = 4 then '좀 많은데?'
when gs.amount = 5 then '먹보'
end as 상태
from student st, get_snack gs
where st.student_id = gs.student_id
group by st.student_id, st.person_name, gs.amount
order by st.student_id;