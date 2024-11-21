-- �� ������ ���� (�ܼ� �̸��� �� �ּ� ���)
INSERT INTO Orders_Member 
VALUES (1, '�迵��', 'kim1@example.com', '010-1234-5678', '����', '1985-05-15', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (2, '����ȣ', 'park2@example.com', '010-8765-4321', '���', '1992-07-22', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (3, '�̼���', 'lee3@example.com', '010-1111-2222', '�λ�', '1990-10-30', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (4, '������', 'choi4@example.com', '010-3456-7890', '����', '1988-03-11', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (5, '���ϴ�', 'jung5@example.com', '010-9876-5432', '��õ', '1995-12-24', SYSTIMESTAMP);

-- �� ������ ���� (�ּ� ����: ����, ����, ��õ, �λ�, ��õ)
INSERT INTO Orders_Member 
VALUES (6, '������', 'kim6@example.com', '010-1234-5679', '����', '1987-08-20', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (7, '�̻��', 'lee7@example.com', '010-2345-6789', '����', '1990-02-14', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (8, '������', 'park8@example.com', '010-3456-7891', '��õ', '1993-09-30', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (9, '������', 'choi9@example.com', '010-4567-8901', '�λ�', '1986-11-05', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (10, '������', 'jung10@example.com', '010-5678-9012', '��õ', '1994-06-17', SYSTIMESTAMP);

INSERT INTO Products 
VALUES (1, '�Ұ�� �����', 8500, '����');  
-- ���� (�Ұ�� �����)

INSERT INTO Products 
VALUES (2, '��ġ�', 7500, '����');  
-- ���� (��ġ�)

INSERT INTO Products 
VALUES (3, '�߰���', 4500, '����');  
-- ���� (�߰���)


-- û�ҿ�ǰ ī�װ� (category_name = 'û�ҿ�ǰ')
INSERT INTO Products 
VALUES (4, '����', 4000, 'û�ҿ�ǰ');  
-- û�ҿ�ǰ (����)

INSERT INTO Products 
VALUES (5, 'û�ұ�', 98000, 'û�ҿ�ǰ');  
-- û�ҿ�ǰ (û�ұ�)

INSERT INTO Products 
VALUES (6, 'û�ҿ� ������', 1000, 'û�ҿ�ǰ');  
-- û�ҿ�ǰ (û�ҿ� ������)


-- �ʱⱸ ī�װ� (category_name = '�ʱⱸ')
INSERT INTO Products 
VALUES (7, '����', 1000, '�ʱⱸ'); 
-- �ʱⱸ (����)

INSERT INTO Products 
VALUES (8, '����', 500, '�ʱⱸ');  
-- �ʱⱸ (����)

INSERT INTO Products 
VALUES (9, '������', 1500, '�ʱⱸ');  
-- �ʱⱸ (������)

-- ��Ȱ��ǰ ī�װ� (category_name = '��Ȱ��ǰ')
INSERT INTO Products 
VALUES (10, '���� ��Ʈ', 12000, '��Ȱ��ǰ');  
-- ��Ȱ��ǰ (���� ��Ʈ)

-- �� �迵��(orders_member_id = 1)�� ���� ��ǰ�� �ֹ��ϴ� ����

-- �ֹ� 1: �Ұ�� ����� (����) - ���� 2��
INSERT INTO Orders 
VALUES (1, 1, 1, SYSTIMESTAMP, 2, '�����'); 
 -- �Ұ�� ����� (����)

-- �ֹ� 2: ��ġ� (����) - ���� 1��
INSERT INTO Orders 
VALUES (2, 1, 2, SYSTIMESTAMP, 1, '�ֹ��Ϸ�');  
-- ��ġ� (����)

-- �ֹ� 3: ���� (û�ҿ�ǰ) - ���� 3��
INSERT INTO Orders 
VALUES (3, 1, 4, SYSTIMESTAMP, 3, '��ۿϷ�');  
-- ���� (û�ҿ�ǰ)

-- �ֹ� 4: û�ұ� (û�ҿ�ǰ) - ���� 1��
INSERT INTO Orders 
VALUES (4, 1, 5, SYSTIMESTAMP, 1, '�ֹ����');  
-- û�ұ� (û�ҿ�ǰ)

-- �ֹ� 5: ���� (�ʱⱸ) - ���� 5��
INSERT INTO Orders 
VALUES (5, 1, 7, SYSTIMESTAMP, 5, '��ҿϷ�');  
-- ���� (�ʱⱸ)

-- �ֹ� 6: ���� ��Ʈ (��Ȱ��ǰ) - ���� 2��
INSERT INTO Orders 
VALUES (6, 1, 10, SYSTIMESTAMP, 2, '�����');  
-- ���� ��Ʈ (��Ȱ��ǰ)


-- �� ����ȣ(orders_member_id = 2)�� ���� ��ǰ�� �ֹ��ϴ� ����

-- �ֹ� 7: �߰��� (����) - ���� 2��
INSERT INTO Orders 
VALUES (7, 2, 3, SYSTIMESTAMP, 2, '�����');  
-- �߰��� (����)

-- �ֹ� 8: û�ҿ� ������ (û�ҿ�ǰ) - ���� 4��
INSERT INTO Orders 
VALUES (8, 2, 6, SYSTIMESTAMP, 4, '�ֹ��Ϸ�');  
-- û�ҿ� ������ (û�ҿ�ǰ)

-- �ֹ� 9: ���� (�ʱⱸ) - ���� 6��
INSERT INTO Orders 
VALUES (9, 2, 8, SYSTIMESTAMP, 6, '��ۿϷ�');  
-- ���� (�ʱⱸ)

-- �ֹ� 10: ������ (�ʱⱸ) - ���� 3��
INSERT INTO Orders 
VALUES (10, 2, 9, SYSTIMESTAMP, 3, '�ֹ��Ϸ�');  
-- ������ (�ʱⱸ)

-- �ֹ� 11: ��ġ� (����) - ���� 1��
INSERT INTO Orders 
VALUES (11, 2, 2, SYSTIMESTAMP, 1, '�ֹ����');  
-- ��ġ� (����)


-- �� �̼���(orders_member_id = 3)�� ���� ��ǰ�� �ֹ��ϴ� ����

-- �ֹ� 12: �Ұ�� ����� (����) - ���� 1��
INSERT INTO Orders 
VALUES (12, 3, 1, SYSTIMESTAMP, 1, '�ֹ��Ϸ�');  
-- �Ұ�� ����� (����)

-- �ֹ� 13: û�ұ� (û�ҿ�ǰ) - ���� 1��
INSERT INTO Orders 
VALUES (13, 3, 5, SYSTIMESTAMP, 1, '�����'); 
 -- û�ұ� (û�ҿ�ǰ)

-- �ֹ� 14: ���� ��Ʈ (��Ȱ��ǰ) - ���� 2��
INSERT INTO Orders 
VALUES (14, 3, 10, SYSTIMESTAMP, 2, '��ۿϷ�');  
-- ���� ��Ʈ (��Ȱ��ǰ)


-- �� ������(orders_member_id = 4) - ��ǰ �ϳ��� ���� (����)
-- �ֹ� 15: ��ġ� (����) - ���� 1��
INSERT INTO Orders 
VALUES (15, 4, 2, SYSTIMESTAMP, 1, '�ֹ��Ϸ�');  
-- ��ġ� (����)

-- �� ���ϴ�(orders_member_id = 5) - ��ǰ �ϳ��� ���� (û�ҿ�ǰ)
-- �ֹ� 16: û�ұ� (û�ҿ�ǰ) - ���� 1��
INSERT INTO Orders 
VALUES (16, 5, 5, SYSTIMESTAMP, 1, '�����');  
-- û�ұ� (û�ҿ�ǰ)

-- �� ������(orders_member_id = 6) - ��ǰ �ϳ��� ���� (�ʱⱸ)
-- �ֹ� 17: ���� (�ʱⱸ) - ���� 1��
INSERT INTO Orders 
VALUES (17, 6, 7, SYSTIMESTAMP, 1, '��ۿϷ�');  
-- ���� (�ʱⱸ)

-- �� �̻��(orders_member_id = 7) - ��ǰ �ϳ��� ���� (��Ȱ��ǰ)
-- �ֹ� 18: ���� ��Ʈ (��Ȱ��ǰ) - ���� 1��
INSERT INTO Orders 
VALUES (18, 7, 10, SYSTIMESTAMP, 1, '�ֹ��Ϸ�');  
-- ���� ��Ʈ (��Ȱ��ǰ)

-- �� ������(orders_member_id = 8) - ��ǰ �ϳ��� ���� (����)
-- �ֹ� 19: �߰��� (����) - ���� 2��
INSERT INTO Orders 
VALUES (19, 8, 3, SYSTIMESTAMP, 2, '��ۿϷ�');  
-- �߰��� (����)

-- �� ������(orders_member_id = 9) - ��ǰ �ϳ��� ���� (û�ҿ�ǰ)
-- �ֹ� 20: û�ҿ� ������ (û�ҿ�ǰ) - ���� 3��
INSERT INTO Orders 
VALUES (20, 9, 6, SYSTIMESTAMP, 3, '�����');  
-- û�ҿ� ������ (û�ҿ�ǰ)

-- �� ������(orders_member_id = 10) - ��ǰ �ϳ��� ���� (�ʱⱸ)
-- �ֹ� 21: ���� (�ʱⱸ) - ���� 5��
INSERT INTO Orders 
VALUES (21, 10, 8, SYSTIMESTAMP, 5, '�ֹ����');  
-- ���� (�ʱⱸ)