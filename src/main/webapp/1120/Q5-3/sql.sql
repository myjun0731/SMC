--2024-11-13 ���� 3.��Ʈ
--���ϸ� : ThreeGetSnackStudentList
--���� �湮 �� �ѹ��̶� ������ 3�� �̻� �������� ��� ���� ����, ���� ��� ���ϱ�
--�й�, �̸�, ���� ������ ����, ���� �� ��, �������
--��Ī : �й�, �̸�, ���ı����Ѽ���, ��������, �������
--+ �й��� �������� ��������


SELECT st.student_id AS �й�, st.person_name AS �̸�, 
gs.amount AS ���ı����Ѽ���, SUM(t.math) AS ��������, 
TRUNC(SUM(t.math) / COUNT(t.math), 0) AS �������
FROM student st, get_snack gs, test t
WHERE st.student_id = gs.student_id 
AND st.student_id = t.student_id 
AND gs.student_id = t.student_id
AND gs.amount >= 3
GROUP BY st.student_id, st.person_name, gs.amount
ORDER BY st.student_id;