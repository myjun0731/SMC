--과제 1 시험 본 횟수 
-- 방법 1-1
select t.student_id as 학번, count(t.student_id) as 시험본횟수
from teat t
group by t.student_id;

-- 방법 2-1
select st.student_id as 학번, count(st.student_id) as 시험본횟수
from student st, test t
where st.student_id = t.student_id
group by st.student_id;

-- 방법 2-2 (응용)
select st.student_id as 학번, st.person_name as 이름, count(t.student_id) as 시험본횟수
from student st, test t
where st.student_id = t.student_id
group by st.student_id, st.person_name;