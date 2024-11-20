--2024-11-13 과제 2. 힌트
--파일명 : StudentLikeGetSnackList
--학번, 이름, 간식 구매한 수량, 구매한 수량에 따라 별명 부여
--별칭 : 학번, 이름, 수량, 간식별명
--1개 ~ 2개  구매 했을 경우 : 소식가
--3개 ~ 5개  구매 했을 경우 : 애호가
--6개 ~ 10개 구매 했을 경우 : 먹보
--+ 학번을 기준으로 오름차순


SELECT st.student_id AS 학번, st.person_name AS 이름, SUM(gs.amount) AS 수량, 
CASE 
WHEN SUM(gs.amount) <= 2 THEN '소식가' 
WHEN SUM(gs.amount) <= 5 THEN '애호가' 
WHEN SUM(gs.amount) <= 10 THEN '먹보' 
END AS 간식별명 
FROM get_snack gs, student st 
WHERE gs.student_id = st.student_id 
GROUP BY st.student_id, st.person_name 
ORDER BY st.student_id;