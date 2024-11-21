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

SELECT 
    P.product_id AS ��ǰ�⺻Ű��,
    P.name AS ��ǰ�̸�,
    SUM(CASE WHEN O.status = '�����' THEN P.price * O.quantity ELSE 0 END) || '��' AS ������Ѹ���,
    SUM(CASE WHEN O.status = '�ֹ��Ϸ�' THEN P.price * O.quantity ELSE 0 END) || '��' AS �ֹ��Ϸ��Ѹ���,
    SUM(CASE WHEN O.status = '��ۿϷ�' THEN P.price * O.quantity ELSE 0 END) || '��' AS ��ۿϷ��Ѹ���,
    SUM(CASE WHEN O.status = '�ֹ����' THEN P.price * O.quantity ELSE 0 END) || '��' AS �ֹ�����Ѹ���,
    SUM(CASE WHEN O.status != '�ֹ����' THEN P.price * O.quantity ELSE 0 END) || '��' AS �ֹ���������Ѹ���,
    SUM(P.price * O.quantity) AS ����
FROM Products P
JOIN Orders O ON P.product_id = O.product_id
GROUP BY P.product_id, P.name
ORDER BY P.product_id;