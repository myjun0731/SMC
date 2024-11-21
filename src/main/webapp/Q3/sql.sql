--과제 3 학생 시험 점수 출력

select st.student_id as 학번, st.person_name as 이름, count(st.student_id) as 시험본횟수,
TRUNC(SUM(math) / COUNT (math), 0) AS 수학평균, TRUNC(SUM(korean) / COUNT (korean), 0) AS 국어평균, TRUNC(SUM(english) / COUNT (english), 0) AS 영어평균, 
sum(math)+sum(korean)+sum(english)+sum(history)+sum(science) as 점수총합,
TRUNC((SUM(math) + SUM(korean) + SUM(english) + SUM(history) + SUM(science)) / (count(math)+count(korean)+count(english)+count(history)+count(science)),0) as 총합평균
from student st, test t
where st.student_id = t.student_id
group by st.student_id, st.person_name;