--���� 4. ������ ���� ���� �湮�� Ƚ�� ���ϱ�
--(���ϸ� : GetSnackList_BloodType)
--+ ������, �湮Ƚ��

SELECT p.blood_type, 
FROM person p, student st, get_snack gs
where p.person_name = st.person_name and st.student_id = gs.student_id;



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