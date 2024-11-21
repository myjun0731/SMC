CREATE TABLE Orders_Member (
    orders_member_id NUMBER PRIMARY KEY,  -- 고객 ID (Primary Key)
    name VARCHAR2(50) NOT NULL, -- 고객 이름
    email VARCHAR2(100) NOT NULL UNIQUE, -- 이메일 주소
    phone_num VARCHAR2(15), -- 전화번호
    address VARCHAR2(255), -- 배송 주소
    birth VARCHAR2(10), -- 생년월일
    join_date TIMESTAMP -- 회원 가입 일자
);

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
-- 테이블 제거
 DROP TABLE Orders;
 DROP TABLE Products;
 DROP TABLE Orders_Member;