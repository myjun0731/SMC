-- 고객 데이터 삽입 (단순 이메일 및 주소 사용)
INSERT INTO Orders_Member 
VALUES (1, '김영희', 'kim1@example.com', '010-1234-5678', '서울', '1985-05-15', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (2, '박준호', 'park2@example.com', '010-8765-4321', '경기', '1992-07-22', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (3, '이수민', 'lee3@example.com', '010-1111-2222', '부산', '1990-10-30', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (4, '최지은', 'choi4@example.com', '010-3456-7890', '대전', '1988-03-11', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (5, '정하늘', 'jung5@example.com', '010-9876-5432', '인천', '1995-12-24', SYSTIMESTAMP);

-- 고객 데이터 삽입 (주소 수정: 서울, 서울, 인천, 부산, 인천)
INSERT INTO Orders_Member 
VALUES (6, '김지민', 'kim6@example.com', '010-1234-5679', '서울', '1987-08-20', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (7, '이상원', 'lee7@example.com', '010-2345-6789', '서울', '1990-02-14', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (8, '박지은', 'park8@example.com', '010-3456-7891', '인천', '1993-09-30', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (9, '최진우', 'choi9@example.com', '010-4567-8901', '부산', '1986-11-05', SYSTIMESTAMP);

INSERT INTO Orders_Member 
VALUES (10, '정소희', 'jung10@example.com', '010-5678-9012', '인천', '1994-06-17', SYSTIMESTAMP);

INSERT INTO Products 
VALUES (1, '불고기 비빔밥', 8500, '음식');  
-- 음식 (불고기 비빔밥)

INSERT INTO Products 
VALUES (2, '김치찌개', 7500, '음식');  
-- 음식 (김치찌개)

INSERT INTO Products 
VALUES (3, '닭강정', 4500, '음식');  
-- 음식 (닭강정)


-- 청소용품 카테고리 (category_name = '청소용품')
INSERT INTO Products 
VALUES (4, '세제', 4000, '청소용품');  
-- 청소용품 (세제)

INSERT INTO Products 
VALUES (5, '청소기', 98000, '청소용품');  
-- 청소용품 (청소기)

INSERT INTO Products 
VALUES (6, '청소용 스폰지', 1000, '청소용품');  
-- 청소용품 (청소용 스폰지)


-- 필기구 카테고리 (category_name = '필기구')
INSERT INTO Products 
VALUES (7, '볼펜', 1000, '필기구'); 
-- 필기구 (볼펜)

INSERT INTO Products 
VALUES (8, '연필', 500, '필기구');  
-- 필기구 (연필)

INSERT INTO Products 
VALUES (9, '형광펜', 1500, '필기구');  
-- 필기구 (형광펜)

-- 생활용품 카테고리 (category_name = '생활용품')
INSERT INTO Products 
VALUES (10, '수건 세트', 12000, '생활용품');  
-- 생활용품 (수건 세트)

-- 고객 김영희(orders_member_id = 1)가 여러 상품을 주문하는 예시

-- 주문 1: 불고기 비빔밥 (음식) - 수량 2개
INSERT INTO Orders 
VALUES (1, 1, 1, SYSTIMESTAMP, 2, '배송중'); 
 -- 불고기 비빔밥 (음식)

-- 주문 2: 김치찌개 (음식) - 수량 1개
INSERT INTO Orders 
VALUES (2, 1, 2, SYSTIMESTAMP, 1, '주문완료');  
-- 김치찌개 (음식)

-- 주문 3: 세제 (청소용품) - 수량 3개
INSERT INTO Orders 
VALUES (3, 1, 4, SYSTIMESTAMP, 3, '배송완료');  
-- 세제 (청소용품)

-- 주문 4: 청소기 (청소용품) - 수량 1개
INSERT INTO Orders 
VALUES (4, 1, 5, SYSTIMESTAMP, 1, '주문취소');  
-- 청소기 (청소용품)

-- 주문 5: 볼펜 (필기구) - 수량 5개
INSERT INTO Orders 
VALUES (5, 1, 7, SYSTIMESTAMP, 5, '취소완료');  
-- 볼펜 (필기구)

-- 주문 6: 수건 세트 (생활용품) - 수량 2개
INSERT INTO Orders 
VALUES (6, 1, 10, SYSTIMESTAMP, 2, '배송중');  
-- 수건 세트 (생활용품)


-- 고객 박준호(orders_member_id = 2)가 여러 상품을 주문하는 예시

-- 주문 7: 닭강정 (음식) - 수량 2개
INSERT INTO Orders 
VALUES (7, 2, 3, SYSTIMESTAMP, 2, '배송중');  
-- 닭강정 (음식)

-- 주문 8: 청소용 스폰지 (청소용품) - 수량 4개
INSERT INTO Orders 
VALUES (8, 2, 6, SYSTIMESTAMP, 4, '주문완료');  
-- 청소용 스폰지 (청소용품)

-- 주문 9: 연필 (필기구) - 수량 6개
INSERT INTO Orders 
VALUES (9, 2, 8, SYSTIMESTAMP, 6, '배송완료');  
-- 연필 (필기구)

-- 주문 10: 형광펜 (필기구) - 수량 3개
INSERT INTO Orders 
VALUES (10, 2, 9, SYSTIMESTAMP, 3, '주문완료');  
-- 형광펜 (필기구)

-- 주문 11: 김치찌개 (음식) - 수량 1개
INSERT INTO Orders 
VALUES (11, 2, 2, SYSTIMESTAMP, 1, '주문취소');  
-- 김치찌개 (음식)


-- 고객 이수민(orders_member_id = 3)가 여러 상품을 주문하는 예시

-- 주문 12: 불고기 비빔밥 (음식) - 수량 1개
INSERT INTO Orders 
VALUES (12, 3, 1, SYSTIMESTAMP, 1, '주문완료');  
-- 불고기 비빔밥 (음식)

-- 주문 13: 청소기 (청소용품) - 수량 1개
INSERT INTO Orders 
VALUES (13, 3, 5, SYSTIMESTAMP, 1, '배송중'); 
 -- 청소기 (청소용품)

-- 주문 14: 수건 세트 (생활용품) - 수량 2개
INSERT INTO Orders 
VALUES (14, 3, 10, SYSTIMESTAMP, 2, '배송완료');  
-- 수건 세트 (생활용품)


-- 고객 최지은(orders_member_id = 4) - 상품 하나만 구매 (음식)
-- 주문 15: 김치찌개 (음식) - 수량 1개
INSERT INTO Orders 
VALUES (15, 4, 2, SYSTIMESTAMP, 1, '주문완료');  
-- 김치찌개 (음식)

-- 고객 정하늘(orders_member_id = 5) - 상품 하나만 구매 (청소용품)
-- 주문 16: 청소기 (청소용품) - 수량 1개
INSERT INTO Orders 
VALUES (16, 5, 5, SYSTIMESTAMP, 1, '배송중');  
-- 청소기 (청소용품)

-- 고객 김지민(orders_member_id = 6) - 상품 하나만 구매 (필기구)
-- 주문 17: 볼펜 (필기구) - 수량 1개
INSERT INTO Orders 
VALUES (17, 6, 7, SYSTIMESTAMP, 1, '배송완료');  
-- 볼펜 (필기구)

-- 고객 이상원(orders_member_id = 7) - 상품 하나만 구매 (생활용품)
-- 주문 18: 수건 세트 (생활용품) - 수량 1개
INSERT INTO Orders 
VALUES (18, 7, 10, SYSTIMESTAMP, 1, '주문완료');  
-- 수건 세트 (생활용품)

-- 고객 박지은(orders_member_id = 8) - 상품 하나만 구매 (음식)
-- 주문 19: 닭강정 (음식) - 수량 2개
INSERT INTO Orders 
VALUES (19, 8, 3, SYSTIMESTAMP, 2, '배송완료');  
-- 닭강정 (음식)

-- 고객 최진우(orders_member_id = 9) - 상품 하나만 구매 (청소용품)
-- 주문 20: 청소용 스폰지 (청소용품) - 수량 3개
INSERT INTO Orders 
VALUES (20, 9, 6, SYSTIMESTAMP, 3, '배송중');  
-- 청소용 스폰지 (청소용품)

-- 고객 정소희(orders_member_id = 10) - 상품 하나만 구매 (필기구)
-- 주문 21: 연필 (필기구) - 수량 5개
INSERT INTO Orders 
VALUES (21, 10, 8, SYSTIMESTAMP, 5, '주문취소');  
-- 연필 (필기구)