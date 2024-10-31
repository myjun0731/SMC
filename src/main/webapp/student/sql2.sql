select
round(sum(ui_test)/count(*)) as ui_test,
round(sum(application_sw)/count(*), 1) as application_sw
from score;

select 
sum(ui_test + application_sw) / (count(ui_test + application_sw))
from score;

select
m.korea_name,
sum(s.ui_test + s.application_sw) / 2 as simple,
sum(s.ui_test + s.application_sw) / (count(s.ui_test) + count(s.application_sw)) as prefer
from member m, score s
where m.id = s.id
group by m.id, m.korea_name;

select id, korea_name from member where id='40305';
