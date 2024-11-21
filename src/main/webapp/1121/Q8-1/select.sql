select
orders_member_id as 기본키,
name as 이름,
email as 이메일,
phone_num as 전화번호,
address as 주소,
SUBSTR(birth,  3, 2) as NN연생,
SUBSTR(birth, 1, 4) as 태어난연도,
(SUBSTR(birth, 1, 4) ||  SUBSTR(birth, 6, 2) || SUBSTR(birth, 9, 2)) as 생년월일,
(2024 - (SUBSTR(birth, 1, 4) + 1)) as 만나이(생일적용X),
CASE
WHEN (SUBSTR(birth, 6, 2) || SUBSTR(birth, 9, 2)) >= 1121 THEN (2024 - (SUBSTR(birth, 1, 4) + 1))
else (2024 - (SUBSTR(birth, 1, 4)))
end as 만나이(생일적용O)
from Orders_Member;

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
