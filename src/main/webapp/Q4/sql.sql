/*과제 2. 간식에 사용한 돈에 따라 등급 부여
(파일명 : StudentGetSnackGradeList)
+ 학번, 매장방문횟수, 구매한간식량, 간식 총 지출, 등급
등급 - 15000원 이상 : 너 뭐야, 10000원 이상 : VIP, 5000원 이상 : 회원, 1000원 이상 : 사용자
(힌트 : COUNT, SUM, TO_CHAR, ||, CASE WHEN, AND, GROUP BY) */

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