--2024-11-13 ���� 2. ��Ʈ
--���ϸ� : StudentLikeGetSnackList
--�й�, �̸�, ���� ������ ����, ������ ������ ���� ���� �ο�
--��Ī : �й�, �̸�, ����, ���ĺ���
--1�� ~ 2��  ���� ���� ��� : �ҽİ�
--3�� ~ 5��  ���� ���� ��� : ��ȣ��
--6�� ~ 10�� ���� ���� ��� : �Ժ�
--+ �й��� �������� ��������


SELECT st.student_id AS �й�, st.person_name AS �̸�, SUM(gs.amount) AS ����, 
CASE 
WHEN SUM(gs.amount) <= 2 THEN '�ҽİ�' 
WHEN SUM(gs.amount) <= 5 THEN '��ȣ��' 
WHEN SUM(gs.amount) <= 10 THEN '�Ժ�' 
END AS ���ĺ��� 
FROM get_snack gs, student st 
WHERE gs.student_id = st.student_id 
GROUP BY st.student_id, st.person_name 
ORDER BY st.student_id;