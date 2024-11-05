CREATE TABLE person (
    person_name VARCHAR2(500) NOT NULL PRIMARY KEY, -- 사람 이름
    birth_date DATE, -- 생년월일
    blood_type CHAR(2) -- 혈액형
);

INSERT INTO person VALUES('종찬', '2006-10-09', 'A');
INSERT INTO person VALUES('찬미', '2005-02-05', 'O');
INSERT INTO person VALUES(본인이름, 본인생일, 본인혈액형);

create table school_time_table (
school_time_name varchar2(250) not null primary key,
start_time number(4),
end_time number(4)
);

create table school_time (
title varchar2(500) not null primary key,
today_start_time timestamp,
today_lunch_time timestamp,
today_end_time timestamp
);

select * from school_time_table;
select * from school_time;

select school_time_name,
to_char(start_time, 'FM0000'), to_char(end_time, 'FM0000'),
substr(to_char(start_time, 'FM0000'),1,2) || ':'|| substr(to_char(start_time, 'FM0000'), 3,2),
NVL2(end_time, substr(to_char(end_time, 'FM0000'),1,2)|| ':' || substr(to_char(end_time, 'FM0000'),3,2), '-')
from school_time_table;

select title,
to_char(today_start_time,'YYYY-MM-DD HH24:MI:SS'),
to_char(today_lunch_time,'YYYY-MM-DD HH24:MI:SS'),
to_char(today_end_time,'YYYY-MM-DD HH24:MI:SS')
from school_time;

select title,
to_char(today_start_time,'YYYY-MM-DD HH24:MI:SS'),
to_char(today_lunch_time,'YYYY-MM-DD HH24:MI:SS'),
to_char(today_end_time,'YYYY-MM-DD HH24:MI:SS')
from school_time where title = '2024-11-05';

update school_time set
today_start_time = to_date('2024-11-05 08:50:00', 'YYYY-MM-DD HH24:MI:SS'),
today_lunch_time = to_date('2024-11-05 12:00:00', 'YYYY-MM-DD HH24:MI:SS'),
today_end_time = to_date('2024-11-05 16:00:00', 'YYYY-MM-DD HH24:MI:SS')
where title = '2024-11-05';

INSERT INTO school_time_table VALUES('학급조회', 0810, 0820);

INSERT INTO school_time_table VALUES('1교시 (50분)', 0820, 0910);
INSERT INTO school_time_table VALUES('[센터] 2교시 (50분)', 0920, 1010);
INSERT INTO school_time_table VALUES('[센터] 3교시 (50분)', 1020, 1110);
INSERT INTO school_time_table VALUES('[센터] 4교시 (40분)', 1120, 1200);

INSERT INTO school_time_table VALUES('점심시간', 1200, 1300);

INSERT INTO school_time_table VALUES('[센터] 5교시 (60분)', 1300, 1400);
INSERT INTO school_time_table VALUES('[센터] 6교시 (50분)', 1410, 1500);
INSERT INTO school_time_table VALUES('[센터] 7교시 (50분)', 1510, 1600);

INSERT INTO school_time_table VALUES('종례', 1600, null);



INSERT INTO school_time VALUES('2024-11-05', 
TO_DATE('2024-11-05 08:50:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_DATE('2024-11-05 12:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_DATE('2024-11-05 16:00:00', 'YYYY-MM-DD HH24:MI:SS')); 

INSERT INTO school_time VALUES('2024-11-06', 
TO_DATE('2024-11-06 08:50:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_DATE('2024-11-06 12:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_DATE('2024-11-06 16:00:00', 'YYYY-MM-DD HH24:MI:SS')); 

INSERT INTO school_time VALUES('2024-11-07', 
TO_DATE('2024-11-07 08:50:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_DATE('2024-11-07 12:00:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_DATE('2024-11-07 16:00:00', 'YYYY-MM-DD HH24:MI:SS')); 