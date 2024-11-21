--���� 2. ����, ���� ���� ���
--(���ϸ� : StudentMathAndKoreanScoreList)
--+ �й�, �̸�, �ֹε�Ϲ�ȣ, ������, ��������, ��������

SELECT 
  st.student_id as �й�,
  p.person_name as �̸�,
  p.jumin_num as �ֹε�Ϲ�ȣ,
  t.test_date as ������,
  t.math as ��������,
  t.korean as ��������
FROM 
  student st,
  person p,
  test t
WHERE 
  st.student_id = t.student_id
  and p.person_name = st.person_name
GROUP BY 
  p.person_name, p.jumin_num, p.blood_type, st.student_id, t.test_date, t.math, t.korean;