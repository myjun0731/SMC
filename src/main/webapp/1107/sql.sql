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


select student_id, korea_name,
decode(substr(student_id,1,1),1, '1학년',2,'2학년',3,'3학년','졸업')
from student;

select count(ui_test), count(application_sw), AVG(ui_test),
AVG(application_sw), trunc(avg(application_sw),0) from score;

INSERT INTO student VALUES('30301', '김도훈');
INSERT INTO student VALUES('30302', '김혜영');
INSERT INTO student VALUES('30307', '조종찬');
INSERT INTO student VALUES('40305', '박찬미');
INSERT INTO student VALUES('20302', '김명준');

INSERT INTO score VALUES('30301', 100, 97);
INSERT INTO score VALUES('30302', 95, 98);
INSERT INTO score VALUES('30307', 83, 67);
INSERT INTO score VALUES('40305', null, 72);