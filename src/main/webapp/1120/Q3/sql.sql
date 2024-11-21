--���� 3. ���� �湮�� �̷� ���
--(���ϸ� : GetSnackStudentList)
-- �⺻Ű, �й�, �̸�, �����̸�, ���İ���, ���ļ���, ���Žð�

select
gs.get_snack_id as �⺻Ű,
gs.student_id as �й�,
st.person_name as �̸�,
gs.snack_name as �����̸�,
s.snack_price as ���İ���,
gs.amount as ���ļ���,
to_char(gs.get_snack_date, 'YYYY-MM-DD HH24:MI') as ���Žð�
from get_snack gs, person p, student st, snack s
where gs.student_id = st.student_id
and st.person_name = p.person_name
and s.snack_name = gs.snack_name;