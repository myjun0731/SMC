--과제 2 매장 방문한 횟수

select gs.student_id as 학번, count(gs.student_id) || '번' as 매장방문한횟수
from get_snack gs
group by gs.student_id;