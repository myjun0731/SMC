-- 윗부분
CREATE SEQUENCE seq_score
INCREMENT BY 1
START WITH 1
MINVALUE 1
NOCYCLE
NOCACHE
NOORDER;

CREATE TABLE person (
    person_name VARCHAR2(500) NOT NULL PRIMARY KEY, -- 사람이름
    jumin_num CHAR(16), -- 주민등록번호
    birth_date DATE, -- 생년월일
    blood_type CHAR(2) -- 혈액형
);

CREATE TABLE student (
    student_id VARCHAR2(5) NOT NULL PRIMARY KEY,
    person_name VARCHAR2(500)
);

-- 아랫부분

CREATE TABLE test (
    test_id NUMBER PRIMARY KEY,
    test_date TIMESTAMP,
    test_name VARCHAR2(500),
    student_id VARCHAR2(5),
    math NUMBER(3),
    korean NUMBER(3),
    english NUMBER(3),
    history NUMBER(3),
    science NUMBER(3),
    FOREIGN KEY (student_id) REFERENCES student(student_id) ON DELETE CASCADE
);

-- 추가 코드
INSERT INTO person VALUES('김민수', '20081009-3******', '2008-10-09', 'A');
INSERT INTO person VALUES('이지현', '20080205-4******', '2008-02-05', 'O');
INSERT INTO person VALUES('박준영', '20081105-3******', '2008-11-05', 'B');
INSERT INTO person VALUES('최유진', '20071009-3******', '2007-10-09', 'AB');
INSERT INTO person VALUES('김태희', '20070205-4******', '2007-02-05', 'A');
INSERT INTO person VALUES('홍길동', '20071105-3******', '2007-11-05', 'O'); 
INSERT INTO person VALUES('정수빈', '20061009-3******', '2006-10-09', 'B');
INSERT INTO person VALUES('강한솔', '20060205-3******', '2006-02-05', 'A');
INSERT INTO person VALUES('송하늘', '20061105-3******', '2006-11-05', 'AB');  
INSERT INTO person VALUES('이영수', '20060909-3******', '2006-09-09', 'O'); 

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

INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '10101', 95, 88, 92, 85, 91); 
INSERT INTO test VALUES (seq_score.NEXTVAL, TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '10110', 80, 90, 87, 76, 83); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '10105', 70, 78, 85, 82, 88); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '20113', 85, 92, 88, 90, 93);
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '20101', 88, 86, 91, 80, 90); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '기말고사', '10101', 78, 85, 80, 89, 92); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '기말고사', '10110', 92, 87, 94, 78, 80); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '기말고사', '20113', 95, 91, 88, 90, 94); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '기말고사', '30314', 70, 80, 85, 75, 82); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '기말고사', '30101', 85, 88, 90, 86, 89); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '10101', 80, 82, 88, 78, 90); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '20113', 92, 93, 90, 85, 92); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '20101', 75, 77, 79, 85, 87);
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '30107', 89, 84, 91, 92, 86); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '중간고사', '30108', 93, 90, 88, 87, 91); 