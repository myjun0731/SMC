select
orders_member_id as �⺻Ű,
name as �̸�,
email as �̸���,
phone_num as ��ȭ��ȣ,
address as �ּ�,
SUBSTR(birth,  3, 2) as NN����,
SUBSTR(birth, 1, 4) as �¾����,
(SUBSTR(birth, 1, 4) ||  SUBSTR(birth, 6, 2) || SUBSTR(birth, 9, 2)) as �������,
(2024 - (SUBSTR(birth, 1, 4) + 1)) as ������(��������X),
CASE
WHEN (SUBSTR(birth, 6, 2) || SUBSTR(birth, 9, 2)) >= 1121 THEN (2024 - (SUBSTR(birth, 1, 4) + 1))
else (2024 - (SUBSTR(birth, 1, 4)))
end as ������(��������O)
from Orders_Member;

SELECT
    orders_member_id AS �⺻Ű,
    name AS �̸�,
    email AS �̸���,
    phone_num AS ��ȭ��ȣ,
    address AS �ּ�,
    SUBSTR(birth, 3, 2) AS NN����,
    SUBSTR(birth, 1, 4) AS �¾����,
    (SUBSTR(birth, 1, 4) || SUBSTR(birth, 6, 2) || SUBSTR(birth, 9, 2)) AS �������,
	2024 - (SUBSTR(birth, 1, 4)) AS ������,
    CASE
        WHEN SUBSTR(birth, 6, 2) >= 12 AND SUBSTR(birth, 9, 2) >= 21 THEN 
            2024 - (SUBSTR(birth, 1, 4) + 1)
        ELSE 
            2024 - (SUBSTR(birth, 1, 4))
    END AS ������_��������
FROM Orders_Member;
