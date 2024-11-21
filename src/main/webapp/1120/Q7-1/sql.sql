--2024-11-20 ���� 1.
--���ϸ� : SchoolYearThreeStudentKoreanEnglishScoreList
--3�г� �л��� ���� & ���� ���� �� Ƚ��, ���� & ���� �� �� ����, ���� & ���� ��� ���� ���
--��Ī : �й�, �г�, �������躻Ƚ��, ���������, ��������
--
--+ �й��� �������� ��������

select
st.student_id as �й�,
case
when st.student_id >= 30000 then '3�г�' end as �г�,
(count(t.korean) + count(t.english)) as ���躻Ƚ��,
(sum(t.korean) + sum(t.english)) as ����,
TRUNC((SUM(t.korean) + SUM(t.english)) / (count(t.korean)+count(t.english)),0) as ���
from test t, student st
where t.student_id = st.student_id and st.student_id >= 30000
group by st.student_id, t.student_id
order by st.student_id;