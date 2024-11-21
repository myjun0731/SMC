--2024-11-13 과제 1. 힌트
--파일명 : StudentMathKoreanScoreAvgAndCountList
--학번, 수학 점수 평균, 수학 & 국어 평균, 수학 시험 본 횟수 + 국어 시험 본 횟수, 시험 본 횟수
--별칭 : 학번, 수학점수평균, 수학국어평균, 수학국어시험본횟수, 시험본횟수
--+ 학번을 기준으로 오름차순

SELECT st.student_id AS 학번, 
TRUNC(SUM(t.math) / COUNT(t.math), 0) AS 수학점수평균,
TRUNC(SUM(t.math + t.korean) / (COUNT(t.math) + COUNT(t.korean)), 0) AS 수학국어평균,
TRUNC((COUNT(t.math) + COUNT(t.korean)), 0) AS 수학국어시험본횟수,
COUNT(t.student_id) AS 시험본횟수
FROM student st, test t
WHERE st.student_id = t.student_id
GROUP BY st.student_id
ORDER BY st.student_id;