CREATE TABLE Orders_Member (
    orders_member_id NUMBER PRIMARY KEY,  -- �� ID (Primary Key)
    name VARCHAR2(50) NOT NULL, -- �� �̸�
    email VARCHAR2(100) NOT NULL UNIQUE, -- �̸��� �ּ�
    phone_num VARCHAR2(15), -- ��ȭ��ȣ
    address VARCHAR2(255), -- ��� �ּ�
    birth VARCHAR2(10), -- �������
    join_date TIMESTAMP -- ȸ�� ���� ����
);

CREATE TABLE Products (
    product_id NUMBER PRIMARY KEY, -- ��ǰ ID (Primary Key)
    name VARCHAR2(100) NOT NULL, -- ��ǰ �̸�
    price NUMBER NOT NULL, -- ����
    category_name VARCHAR2(100) -- ī�װ�
);

CREATE TABLE Orders (
    order_id NUMBER PRIMARY KEY, -- �ֹ� ID (Primary Key)
    orders_member_id NUMBER, -- �� ID (Foreign Key)
    product_id NUMBER, -- ��ǰ ID (Primary Key)
    order_date TIMESTAMP, -- �ֹ� ����
    quantity NUMBER NOT NULL, -- ����
    status VARCHAR2(20) NOT NULL, -- �ֹ� ����
    FOREIGN KEY (orders_member_id) 
    REFERENCES Orders_Member(orders_member_id) ON DELETE CASCADE, -- �ܷ� Ű
    FOREIGN KEY (product_id) 
    REFERENCES Products(product_id) ON DELETE CASCADE -- �ܷ� Ű
);
-- ���̺� ����
 DROP TABLE Orders;
 DROP TABLE Products;
 DROP TABLE Orders_Member;