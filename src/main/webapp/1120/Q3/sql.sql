--과제 3. 매장 방문한 이력 출력
--(파일명 : GetSnackStudentList)
-- 기본키, 학번, 이름, 간식이름, 간식가격, 간식수량, 구매시간

select
gs.get_snack_id as 기본키,
gs.student_id as 학번,
st.person_name as 이름,
gs.snack_name as 간식이름,
s.snack_price as 간식가격,
gs.amount as 간식수량,
to_char(gs.get_snack_date, 'YYYY-MM-DD HH24:MI') as 구매시간
from get_snack gs, person p, student st, snack s
where gs.student_id = st.student_id
and st.person_name = p.person_name
and s.snack_name = gs.snack_name;