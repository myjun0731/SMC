CREATE TABLE Products (
    product_id NUMBER PRIMARY KEY, -- 상품 ID (Primary Key)
    name VARCHAR2(100) NOT NULL, -- 상품 이름
    price NUMBER NOT NULL, -- 가격
    category_name VARCHAR2(100) -- 카테고리
);
CREATE TABLE Orders (
    order_id NUMBER PRIMARY KEY, -- 주문 ID (Primary Key)
    orders_member_id NUMBER, -- 고객 ID (Foreign Key)
    product_id NUMBER, -- 상품 ID (Primary Key)
    order_date TIMESTAMP, -- 주문 일자
    quantity NUMBER NOT NULL, -- 수량
    status VARCHAR2(20) NOT NULL, -- 주문 상태
    FOREIGN KEY (orders_member_id) 
    REFERENCES Orders_Member(orders_member_id) ON DELETE CASCADE, -- 외래 키
    FOREIGN KEY (product_id) 
    REFERENCES Products(product_id) ON DELETE CASCADE -- 외래 키
);

SELECT 
    P.product_id AS 상품기본키값,
    P.name AS 상품이름,
    SUM(CASE WHEN O.status = '배송중' THEN P.price * O.quantity ELSE 0 END) || '원' AS 배송중총매출,
    SUM(CASE WHEN O.status = '주문완료' THEN P.price * O.quantity ELSE 0 END) || '원' AS 주문완료총매출,
    SUM(CASE WHEN O.status = '배송완료' THEN P.price * O.quantity ELSE 0 END) || '원' AS 배송완료총매출,
    SUM(CASE WHEN O.status = '주문취소' THEN P.price * O.quantity ELSE 0 END) || '원' AS 주문취소총매출,
    SUM(CASE WHEN O.status != '주문취소' THEN P.price * O.quantity ELSE 0 END) || '원' AS 주문취소제외총매출,
    SUM(P.price * O.quantity) AS 총합
FROM Products P
JOIN Orders O ON P.product_id = O.product_id
GROUP BY P.product_id, P.name
ORDER BY P.product_id;