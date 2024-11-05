CREATE TABLE person (
    person_name VARCHAR2(500) NOT NULL PRIMARY KEY, -- 사람 이름
    birth_date DATE, -- 생년월일
    blood_type CHAR(2) -- 혈액형
);

INSERT INTO person VALUES('종찬', '2006-10-09', 'A');
INSERT INTO person VALUES('찬미', '2005-02-05', 'O');
INSERT INTO person VALUES(본인이름, 본인생일, 본인혈액형);