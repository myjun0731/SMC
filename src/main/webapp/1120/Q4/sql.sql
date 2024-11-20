--과제 4. 혈액형 별로 매장 방문한 횟수 구하기
--(파일명 : GetSnackList_BloodType)
--+ 혈액형, 방문횟수

SELECT p.blood_type as 혈액형, COUNT(*) AS 방문횟수
FROM person p, get_snack gs, student st
where p.person_name = st.person_name and st.student_id = gs.student_id
GROUP BY p.blood_type;