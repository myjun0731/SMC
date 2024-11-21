
select p.person_name as 이름,
case
when SUBSTR(p.jumin_num, 10,1) in ('1','2') then 1900 + substr(p.jumin_num, 3,2)
when SUBSTR(p.jumin_num, 10,1) in ('3','4') then 2000 + substr(p.jumin_num, 3,2)
end || '년' as 생년,
SUBSTR(p.jumin_num, 5, 2) || '월' || SUBSTR(p.jumin_num, 7, 2) || '월' as 월일,
case
when SUBSTR(p.jumin_num, 10, 1) in ('1','2') then to_char(sysdate, 'YYYY') - (1900 + SUBSTR(p.jumin_num, 3, 2))
when SUBSTR(p.jumin_num, 10, 1) in ('3','4') then to_char(sysdate, 'YYYY') - (2000 + SUBSTR(p.jumin_num, 3, 2))
end 만나이,
case
when SUBSTR(p.jumin_num, 10, 1) in ('1','3') then '남자'
when SUBSTR(p.jumin_num, 10, 1) in ('2','4') then '여자'
end as 성별
from person p;

select gs.get_snack_id, gs.student_id, gs.snack_name,
gs.amount, to_char(gs.get_snack_date, 'YYYY-MM-DD HH24:MI')
from get_snack gs;

select gs.get_snack_id, gs.student_id, gs.snack_name,
gs.amount, to_char(gs.get_snack_date, 'YYYY-MM-DD HH24:MI')
from get_snack gs
where gs.get_snack_id = 1;

select s.snack_name from snack s
order by decode(s.snack_name, '떡볶이', 1);