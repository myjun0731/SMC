/*���� 1.�л��� ������ �����ϴµ� �� �� ���� ���ϱ�
(���ϸ� : StudentGetSnackPriceList)
+ �̸�, �ֹε�Ϲ�ȣ, ������, �й�, ������*/

SELECT 
  p.person_name as �̸�,
  p.jumin_num as �ֹε�Ϲ�ȣ,
  p.blood_type as ������,
  st.student_id as �й�,
  SUM(s.snack_price * g.amount) AS ������
FROM 
  person p,
  student st,
  get_snack g,
  snack s
WHERE 
  p.person_name = st.person_name
  AND st.student_id = g.student_id
  AND g.snack_name = s.snack_name
GROUP BY 
  p.person_name, p.jumin_num, p.blood_type, st.student_id;