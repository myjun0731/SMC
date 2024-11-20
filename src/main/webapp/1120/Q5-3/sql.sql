--2024-11-13 과제 3.힌트
--파일명 : ThreeGetSnackStudentList
--매장 방문 시 한번이라도 간식을 3개 이상 구매했을 경우 수학 총합, 수학 평균 구하기
--학번, 이름, 간식 구매한 수량, 수학 총 합, 수학평균
--별칭 : 학번, 이름, 간식구매한수량, 수학총합, 수학평균
--+ 학번을 기준으로 오름차순


SELECT st.student_id AS 학번, st.person_name AS 이름, 
gs.amount AS 간식구매한수량, SUM(t.math) AS 수학총합, 
TRUNC(SUM(t.math) / COUNT(t.math), 0) AS 수학평균
FROM student st, get_snack gs, test t
WHERE st.student_id = gs.student_id 
AND st.student_id = t.student_id 
AND gs.student_id = t.student_id
AND gs.amount >= 3
GROUP BY st.student_id, st.person_name, gs.amount
ORDER BY st.student_id;