--2024-11-20 ���� 2.
--���ϸ� : GetSnackAmountStateStudentList
--������ ������ ���� ������ �л��� ���� ����ϱ�
--��Ī : �й�, �̸�, ���ż���, ����
--1�� ������ �л� : ����
--2�� ������ �л� : �����Գ�?
--3�� ������ �л� : �����ϳ�
--4�� ������ �л� : �� ������?
--5�� ������ �л� : �Ժ�
--+ �й��� �������� ��������

select
st.student_id as �й�,
st.person_name as �̸�,
gs.amount as ���ż���,
case
when gs.amount = 1 then '����'
when gs.amount = 2 then '�����Գ�?'
when gs.amount = 3 then '�����ϳ�'
when gs.amount = 4 then '�� ������?'
when gs.amount = 5 then '�Ժ�'
end as ����
from student st, get_snack gs
where st.student_id = gs.student_id
group by st.student_id, st.person_name, gs.amount
order by st.student_id;