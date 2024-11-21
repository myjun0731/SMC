/*���� 2. ���Ŀ� ����� ���� ���� ��� �ο�
(���ϸ� : StudentGetSnackGradeList)
+ �й�, ����湮Ƚ��, �����Ѱ��ķ�, ���� �� ����, ���
��� - 15000�� �̻� : �� ����, 10000�� �̻� : VIP, 5000�� �̻� : ȸ��, 1000�� �̻� : �����
(��Ʈ : COUNT, SUM, TO_CHAR, ||, CASE WHEN, AND, GROUP BY) */

SELECT 
  gs.student_id AS �й�,
  COUNT(gs.student_id) || '��' AS ����湮��Ƚ��,
  SUM(gs.amount) AS �����Ѱ��ķ�,
  SUM(s.snack_price * gs.amount) AS ����������,
  CASE 
    WHEN SUM(s.snack_price * gs.amount) >= 15000 THEN '�ʹ���'
    WHEN SUM(s.snack_price * gs.amount) >= 10000 THEN 'VIP' 
    WHEN SUM(s.snack_price * gs.amount) >= 5000 THEN 'ȸ��'
    ELSE '�����'
  END AS ���
FROM get_snack gs, snack s
WHERE s.snack_name = gs.snack_name
GROUP BY gs.student_id;