create table member (
id varchar2(5) not null primary key,
korea_name varchar2(20)
);

create table score (
id varchar2(5) not null primary key,
ui_test number(3),
application_sw number(3)
);

insert into member values('30301', '김도훈');
insert into member values('30302', '김혜영');
insert into member values('30307', '조종찬');
insert into member values('40305', '박찬미');

insert into score values('30301', 100, 97);
insert into score values('30302', 95, 93);
insert into score values('30307', 83, 67);
insert into score values('40305', 77, 80);

select * from member;
select * from score;