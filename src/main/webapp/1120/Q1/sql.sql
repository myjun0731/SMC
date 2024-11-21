/*과제 1.학생이 간식을 구매하는데 쓴 돈 총합 구하기
(파일명 : StudentGetSnackPriceList)
+ 이름, 주민등록번호, 혈액형, 학번, 총지출*/

SELECT 
  p.person_name as 이름,
  p.jumin_num as 주민등록번호,
  p.blood_type as 혈액형,
  st.student_id as 학번,
  SUM(s.snack_price * g.amount) AS 총지출
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