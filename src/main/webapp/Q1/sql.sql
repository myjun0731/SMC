--���� 1 ���� �� Ƚ�� 
-- ��� 1-1
select t.student_id as �й�, count(t.student_id) as ���躻Ƚ��
from teat t
group by t.student_id;

-- ��� 2-1
select st.student_id as �й�, count(st.student_id) as ���躻Ƚ��
from student st, test t
where st.student_id = t.student_id
group by st.student_id;

-- ��� 2-2 (����)
select st.student_id as �й�, st.person_name as �̸�, count(t.student_id) as ���躻Ƚ��
from student st, test t
where st.student_id = t.student_id
group by st.student_id, st.person_name;