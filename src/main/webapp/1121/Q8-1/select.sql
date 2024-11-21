SELECT
    orders_member_id AS 기본키,
    name AS 이름,
    email AS 이메일,
    phone_num AS 전화번호,
    address AS 주소,
    SUBSTR(birth, 3, 2) AS NN연생,
    SUBSTR(birth, 1, 4) AS 태어난연도,
    (SUBSTR(birth, 1, 4) || SUBSTR(birth, 6, 2) || SUBSTR(birth, 9, 2)) AS 생년월일,
	2024 - (SUBSTR(birth, 1, 4)) AS 만나이,
    CASE
        WHEN SUBSTR(birth, 6, 2) >= 12 AND SUBSTR(birth, 9, 2) >= 21 THEN 
            2024 - (SUBSTR(birth, 1, 4) + 1)
        ELSE 
            2024 - (SUBSTR(birth, 1, 4))
    END AS 만나이_생일적용
FROM Orders_Member;