create table jumin (
korea_name varchar2(500) not null primary key,
jumin_num char(13)
);

select korea_name, jumin_num,
substr(jumin_num, 1,6), substr(jumin_num,7),
substr(jumin_num, 7,1),
case
when substr(jumin_num, 7, 1) in (9,1,3,5,7) then '남자'
when substr(jumin_num, 7, 1) in (0,2,4,6,8) then '여자'
else '오류' end
from jumin;

create table student (
student_id varchar2(5) not null primary key,
korea_name varchar2(20)
);

create table score (
student_id varchar2(5),
ui_test number(3),
application_sw number(3)
);

select count(ui_test), count(application_sw), AVG(ui_test),
AVG(application_sw), trunc(avg(application_sw),0) from score;

select st.student_id, st.korea_name, sc.ui_test, rank() over (order by sc.ui_test desc)
from student st, score sc
where st.student_id = sc.student_id and sc.ui_test is not null;

select st.student_id, st.korea_name, sc.application_sw, rank() over (order by sc.application_sw desc)
from student st, score sc
where st.student_id = sc.student_id and sc.application_sw is not null;