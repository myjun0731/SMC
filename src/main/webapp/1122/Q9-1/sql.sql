-- ���κ�
CREATE SEQUENCE seq_score
INCREMENT BY 1
START WITH 1
MINVALUE 1
NOCYCLE
NOCACHE
NOORDER;

CREATE TABLE person (
    person_name VARCHAR2(500) NOT NULL PRIMARY KEY, -- ����̸�
    jumin_num CHAR(16), -- �ֹε�Ϲ�ȣ
    birth_date DATE, -- �������
    blood_type CHAR(2) -- ������
);

CREATE TABLE student (
    student_id VARCHAR2(5) NOT NULL PRIMARY KEY,
    person_name VARCHAR2(500)
);

-- �Ʒ��κ�

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

-- �߰� �ڵ�
INSERT INTO person VALUES('��μ�', '20081009-3******', '2008-10-09', 'A');
INSERT INTO person VALUES('������', '20080205-4******', '2008-02-05', 'O');
INSERT INTO person VALUES('���ؿ�', '20081105-3******', '2008-11-05', 'B');
INSERT INTO person VALUES('������', '20071009-3******', '2007-10-09', 'AB');
INSERT INTO person VALUES('������', '20070205-4******', '2007-02-05', 'A');
INSERT INTO person VALUES('ȫ�浿', '20071105-3******', '2007-11-05', 'O'); 
INSERT INTO person VALUES('������', '20061009-3******', '2006-10-09', 'B');
INSERT INTO person VALUES('���Ѽ�', '20060205-3******', '2006-02-05', 'A');
INSERT INTO person VALUES('���ϴ�', '20061105-3******', '2006-11-05', 'AB');  
INSERT INTO person VALUES('�̿���', '20060909-3******', '2006-09-09', 'O'); 

INSERT INTO student VALUES('30307', '������');
INSERT INTO student VALUES('10101', '��μ�');
INSERT INTO student VALUES('10110', '������');
INSERT INTO student VALUES('10105', '���ؿ�');
INSERT INTO student VALUES('20113', '������');
INSERT INTO student VALUES('20101', '������');
INSERT INTO student VALUES('20118', 'ȫ�浿');
INSERT INTO student VALUES('30314', '������');
INSERT INTO student VALUES('30101', '���Ѽ�');
INSERT INTO student VALUES('30107', '���ϴ�');
INSERT INTO student VALUES('30108', '�̿���');

INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '�߰����', '10101', 95, 88, 92, 85, 91); 
INSERT INTO test VALUES (seq_score.NEXTVAL, TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '�߰����', '10110', 80, 90, 87, 76, 83); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '�߰����', '10105', 70, 78, 85, 82, 88); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '�߰����', '20113', 85, 92, 88, 90, 93);
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-01 09:00', 'YYYY-MM-DD HH24:MI'), '�߰����', '20101', 88, 86, 91, 80, 90); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '�⸻���', '10101', 78, 85, 80, 89, 92); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '�⸻���', '10110', 92, 87, 94, 78, 80); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '�⸻���', '20113', 95, 91, 88, 90, 94); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '�⸻���', '30314', 70, 80, 85, 75, 82); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-05-02 11:00', 'YYYY-MM-DD HH24:MI'), '�⸻���', '30101', 85, 88, 90, 86, 89); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '�߰����', '10101', 80, 82, 88, 78, 90); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '�߰����', '20113', 92, 93, 90, 85, 92); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '�߰����', '20101', 75, 77, 79, 85, 87);
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '�߰����', '30107', 89, 84, 91, 92, 86); 
INSERT INTO test VALUES(seq_score.NEXTVAL, TO_DATE('2024-06-01 09:00', 'YYYY-MM-DD HH24:MI'), '�߰����', '30108', 93, 90, 88, 87, 91); 