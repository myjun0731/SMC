/*과제 3. 수학이 90점 이상인 학생이 간식에 얼마 사용하였는지 출력
(파일명 : TestMathFirstScoreGetSnackList)
+ 학번, 수학 점수, 간식 총 지출
(힌트 : TO_CHAR, SUM, ||, AND, GROUP BY)*/


SELECT gs.student_id AS 학번, t.math AS 수학점수, 
       TO_CHAR(SUM(s.snack_price * gs.amount), '999,999') AS 간식총지출
FROM get_snack gs, snack s, test t
WHERE s.snack_name = gs.snack_name and t.math >= 90 and gs.student_id = t.student_id
GROUP BY gs.student_id, t.math;