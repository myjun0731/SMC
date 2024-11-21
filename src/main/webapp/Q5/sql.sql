/*���� 3. ������ 90�� �̻��� �л��� ���Ŀ� �� ����Ͽ����� ���
(���ϸ� : TestMathFirstScoreGetSnackList)
+ �й�, ���� ����, ���� �� ����
(��Ʈ : TO_CHAR, SUM, ||, AND, GROUP BY)*/


SELECT gs.student_id AS �й�, t.math AS ��������, 
       TO_CHAR(SUM(s.snack_price * gs.amount), '999,999') AS ����������
FROM get_snack gs, snack s, test t
WHERE s.snack_name = gs.snack_name and t.math >= 90 and gs.student_id = t.student_id
GROUP BY gs.student_id, t.math;