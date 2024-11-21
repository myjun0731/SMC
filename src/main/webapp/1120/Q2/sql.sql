--과제 2. 수학, 국어 시험 출력
--(파일명 : StudentMathAndKoreanScoreList)
--+ 학번, 이름, 주민등록번호, 시험일, 수학점수, 국어점수

SELECT 
  st.student_id as 학번,
  p.person_name as 이름,
  p.jumin_num as 주민등록번호,
  t.test_date as 시험일,
  t.math as 수학점수,
  t.korean as 국어점수
FROM 
  student st,
  person p,
  test t
WHERE 
  st.student_id = t.student_id
  and p.person_name = st.person_name
GROUP BY 
  p.person_name, p.jumin_num, p.blood_type, st.student_id, t.test_date, t.math, t.korean;