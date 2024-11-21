create table ex_date (
korea_name varchar2(500),
student_num number(5),
birth_date date,
blood_type char(2),
primary key(korea_name, student_num)
);

insert into ex_date values ('종찬', 30307, to_date('2006-10-09','YYYY-MM-DD'),'A');
insert into ex_date values ('찬미', 30305, to_date('2005-02-05','YYYY-MM-DD'),'o');
commit;