--���� 3 �л� ���� ���� ���

select st.student_id as �й�, st.person_name as �̸�, count(st.student_id) as ���躻Ƚ��,
TRUNC(SUM(math) / COUNT (math), 0) AS �������, TRUNC(SUM(korean) / COUNT (korean), 0) AS �������, TRUNC(SUM(english) / COUNT (english), 0) AS �������, 
sum(math)+sum(korean)+sum(english)+sum(history)+sum(science) as ��������,
TRUNC(sum(math)+sum(korean)+sum(english)+sum(history)+sum(science) / count(math) + count(korean) + count(english) + count(history) + count(science), 0) as ��ü���
from student st, test t
where st.student_id = t.student_id
group by st.student_id, st.person_name;