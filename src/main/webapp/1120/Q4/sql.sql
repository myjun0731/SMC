--과제 4. 혈액형 별로 매장 방문한 횟수 구하기
--(파일명 : GetSnackList_BloodType)
--+ 혈액형, 방문횟수

SELECT p.blood_type, 
FROM person p, student st, get_snack gs
where p.person_name = st.person_name and st.student_id = gs.student_id;



SELECT 
  gs.student_id AS 학번,
  COUNT(gs.student_id) || '번' AS 매장방문한횟수,
  SUM(gs.amount) AS 구매한간식량,
  SUM(s.snack_price * gs.amount) AS 간식총지출,
  CASE 
    WHEN SUM(s.snack_price * gs.amount) >= 15000 THEN '너뭐야'
    WHEN SUM(s.snack_price * gs.amount) >= 10000 THEN 'VIP' 
    WHEN SUM(s.snack_price * gs.amount) >= 5000 THEN '회원'
    ELSE '사용자'
  END AS 등급
FROM get_snack gs, snack s
WHERE s.snack_name = gs.snack_name
GROUP BY gs.student_id;