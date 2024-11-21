create SEQUENCE seq_score
increment by 1
start with 1
minvalue 1
nocycle
nocache
noorder;

create table person (
person_name varchar2(500) not null primary key,
jumin_num char(16),
birth_date date,
blood_type char(2)
);

create table student (
student_id varchar2(5) not null primary key,
person_name varchar2(500)
);

create table test(
test_id number primary key,
test_date timestamp,
test_name varchar2(500),
student_id varchar2(5),
math number(3),
korean number(3),
english number(3),
history number(3),
science number(3),
foreign key (student_id) references student(student_id) on delete cascade
);

create SEQUENCE seq_food
increment by 1
start with 1
minvalue 1
nocycle
nocache
noorder;

create table snack(
snack_name varchar2(500) primary key,
snack_price number
);

create table get_snack(
get_snack_id number primary key,
student_id varchar2(5),
snack_name varchar2(500),
amount number,
get_snack_date timestamp,
foreign key (student_id) references student(student_id) on delete cascade,
foreign key (snack_name) references snack(snack_name) on delete cascade
);

INSERT INTO person VALUES('조종찬', '20061009-3******', '2006-10-09', 'A');
INSERT INTO person VALUES('박찬미', '20050205-4******', '2005-02-05', 'O');
INSERT INTO person VALUES('누군가', '19991105-1******', '1999-11-05', 'B');


INSERT INTO student VALUES('30307', '조종찬');

INSERT INTO student VALUES('10101', '김민수');
INSERT INTO student VALUES('10110', '이지현');
INSERT INTO student VALUES('10105', '박준영');

INSERT INTO student VALUES('20113', '최유진');
INSERT INTO student VALUES('20101', '김태희');
INSERT INTO student VALUES('20118', '홍길동');

INSERT INTO student VALUES('30314', '정수빈');
INSERT INTO student VALUES('30101', '강한솔');
INSERT INTO student VALUES('30107', '송하늘');
INSERT INTO student VALUES('30108', '이영수');


INSERT INTO test VALUES
(seq_score.NEXTVAL, 
TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '10101',
95, 88, 92, 85, 91); 

INSERT INTO test VALUES
(seq_score.NEXTVAL, 
TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '10110', 
80, 90, 87, 76, 83); 

INSERT INTO test VALUES
(seq_score.NEXTVAL, 
TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '10105', 
70, 78, 85, 82, 88); 

INSERT INTO test VALUES
(seq_score.NEXTVAL, 
TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '20113', 
85, 92, 88, 90, 93);

INSERT INTO test VALUES
(seq_score.NEXTVAL, 
TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '20101', 
88, 86, 91, 80, 90); 


INSERT INTO test VALUES(seq_score.NEXTVAL, 
TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '기말고사', '10101', 
78, 85, 80, 89, 92); 

INSERT INTO test VALUES(seq_score.NEXTVAL, 
TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '기말고사', '10110', 
92, 87, 94, 78, 80); 

INSERT INTO test VALUES(seq_score.NEXTVAL, 
TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '기말고사', '20113', 
95, 91, 88, 90, 94); 

INSERT INTO test VALUES(seq_score.NEXTVAL, 
TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '기말고사', '30314', 
70, 80, 85, 75, 82); 

INSERT INTO test VALUES(seq_score.NEXTVAL, 
TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '기말고사', '30101', 
85, 88, 90, 86, 89); 


INSERT INTO test VALUES(seq_score.NEXTVAL, 
TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '10101', 
80, 82, 88, 78, 90); 

INSERT INTO test VALUES(seq_score.NEXTVAL, 
TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '20113', 
92, 93, 90, 85, 92); 

INSERT INTO test VALUES(seq_score.NEXTVAL, 
TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '20101', 
75, 77, 79, 85, 87);

INSERT INTO test VALUES(seq_score.NEXTVAL, 
TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '30107', 
89, 84, 91, 92, 86); 

INSERT INTO test VALUES(seq_score.NEXTVAL, 
TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '30108', 
93, 90, 88, 87, 91); 


INSERT INTO snack VALUES('초코파이', 1500);
INSERT INTO snack VALUES('떡볶이', 3000);
INSERT INTO snack VALUES('감자튀김', 2500);
INSERT INTO snack VALUES('호두과자', 1800);
INSERT INTO snack VALUES('치즈스틱', 2000);

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '10101', '초코파이', 3, TO_DATE('2024-10-01 14:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '10110', '떡볶이', 1, TO_DATE('2024-10-02 11:45:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '10105', '감자튀김', 2, TO_DATE('2024-10-03 16:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '20113', '호두과자', 5, TO_DATE('2024-10-04 13:10:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '20101', '치즈스틱', 2, TO_DATE('2024-10-05 09:30:00', 'YYYY-MM-DD HH24:MI:SS'));


INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '20118', '초코파이', 1, TO_DATE('2024-10-06 12:20:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '30314', '떡볶이', 2, TO_DATE('2024-10-07 17:35:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '30101', '감자튀김', 3, TO_DATE('2024-10-08 18:40:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '30107', '호두과자', 4, TO_DATE('2024-10-09 10:25:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '30108', '치즈스틱', 1, TO_DATE('2024-10-10 14:50:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '10101', '초코파이', 2, TO_DATE('2024-10-11 15:15:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '10110', '떡볶이', 1, TO_DATE('2024-10-12 11:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '10105', '감자튀김', 5, TO_DATE('2024-10-13 13:55:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '20113', '호두과자', 2, TO_DATE('2024-10-14 10:10:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO get_snack  
VALUES (seq_food.NEXTVAL, '20101', '치즈스틱', 3, TO_DATE('2024-10-15 16:30:00', 'YYYY-MM-DD HH24:MI:SS'));


SELECT s.snack_name,
TO_CHAR(SUM(s.snack_price * gs.amount), '999,999') || '원' AS 총매출,
RANK() OVER (ORDER BY SUM(s.snack_price * gs.amount) DESC) AS 순위, CASE WHEN SUM(s.snack_price* gs.amount) >= 15000 THEN '재판매' WHEN SUM(s.snack_price* gs.amount) >= 10000 THEN '보류' ELSE '판매 중단' END AS 재판매여부
FROM snack s, get_snack gs
WHERE s.snack_name = gs.snack_name
GROUP BY s.snack_name;



SELECT st.student_id, st.person_name, TO_CHAR(SUM(gs.amount * s.snack_price), '999,999') || '원' FROM student st, get_snack gs, snack s
WHERE st.student_id = gs.student_id AND s.snack_name = gs.snack_name GROUP BY st.student_id, st.person_name ORDER BY st.student_id;

SELECT TO_CHAR(test_date, 'YYYY-MM-DD'), test_name, student_id, (math + korean + english + history + science) / 5 FROM test;
TestScoreList
SELECT TO_CHAR(test_date, 'YYYY-MM-DD'), test_name, MAX(math), MAX (korean), MAX(english), MAX (history), MAX(science)
FROM test t
GROUP BY test_date, test_name;

select count(student_id) from test;

select count(distinct student_id) from test;

select to_char(test_date, 'YYYY-MM-DD'), test_name from test;
select distinct to_char(test_date,'YYYY-MM-DD') as 시험날짜, test_name from test
order by 시험날짜;

select test_date, test_name, student_id, math, korean, english, history, science
from test
where to_char(test_date,'YYYYMMDD')
in('20240501','20240601','20240602');

select test_date, test_name, student_id, math, korean, english, history, science
from test
where to_char(test_date,'YYYYMMDD') between '20240501' and'20240531';


SELECT TO_CHAR(test_date, 'YYYY-MM-DD HH24:MI'), test_name, student_id, math
FROM test
WHERE math BETWEEN 90 AND 100;
SELECT TO_CHAR(test_date, 'YYYY-MM-DD HH24:MI'), test_name, student_id, math
FROM test
WHERE SUBSTR(student_id, 1, 1) = '1';
SELECT TO_CHAR(test_date, 'YYYY-MM-DD'), student_id, math + korean + english + history + science
FROM test;
SELECT gs.get_snack_id, gs.student_id, TO_CHAR(s.snack_price* gs.amount, '999,999') || '일'
FROM snack s, get_snack gs WHERE gs.snack_name = s.snack_name;

SELECT snack_name FROM snack WHERE snack_name LIKE '%이%';
SELECT s.snack_name, SUM(s.snack_price* gs.amount) AS 총매출 FROM snack s, get_snack gs
WHERE s.snack_name = gs.snack_name GROUP BY s.snack_name;


SELECT COUNT(p.person_name)
FROM person p, student s
WHERE p.person_name = s.person_name;
SELECT TO_CHAR(get_snack_id, 'FM00000') FROM get_snack;

SELECT person_name, blood_type,
DECODE(blood_type,
'A', '사과',
'B', '바나나',
'O', '오렌지',
'AB', '없음')
FROM person;

SELECT person_name, blood_type,
DECODE(blood_type,
'A', '사과',
'B', '바나나',
'O', '오렌지',
'AB', '없음')
FROM person;

SELECT TO_CHAR(test_date, 'YYYY-MM-DD HH24:MI'),
test_name,
SUM(math) / COUNT(math) AS 수학전체평균, ROUND (SUM(math) / COUNT (math), 0) AS 반올림
FROM test
WHERE TO_CHAR(test_date, 'YYYY-MM-DD HH24:MI') = '2024-05-01 09:00'
GROUP BY test_date, test_name;

SELECT TO_CHAR(test_date, 'YYYY-MM-DD HH24:MI'),
test_name, SUM(korean) / COUNT (korean) AS 국어전체평균,
TRUNC(SUM(korean) / COUNT (korean), 0) AS 반올림
FROM test
WHERE TO_CHAR(test_date, 'YYYY-MM-DD HH24:MI') = '2024-05-01 09:00'
GROUP BY test_date, test_name;
SELECT MAX(student_id) FROM student;
