--2024-11-20 과제 1.
--파일명 : SchoolYearThreeStudentKoreanEnglishScoreList
--3학년 학생이 국어 & 영어 시험 본 횟수, 국어 & 영어 총 합 점수, 국어 & 영어 평균 점수 출력
--별칭 : 학번, 학년, 국어영어시험본횟수, 국어영어총합, 국어영어평균
--
--+ 학번을 기준으로 오름차순

select
st.student_id as 학번,
case
when st.student_id >= 30000 then '3학년' end as 학년,
(count(t.korean) + count(t.english)) as 시험본횟수,
(sum(t.korean) + sum(t.english)) as 총합,
TRUNC((SUM(t.korean) + SUM(t.english)) / (count(t.korean)+count(t.english)),0) as 평균
from test t, student st
where t.student_id = st.student_id and st.student_id >= 30000
group by st.student_id, t.student_id
order by st.student_id;