--2024-11-18 과제 1. 힌트
--파일명 : GetSnackAllList
--간식 총매출 출력
--간식이름, 가격, 간식이 구매된 수량, 총매출
--별칭 : 간식이름, 간식가격, 구매된수량, 총매출
--+ 간식 이름을 기준으로 오름차순

SELECT s.snack_name AS 간식이름, 
TO_CHAR(s.snack_price, '999,999') AS 간식가격,
SUM(gs.amount) AS 구매된수량, 
TO_CHAR(SUM(s.snack_price * gs.amount), '999,999') AS 총매출
FROM snack s, get_snack gs
WHERE s.snack_name = gs.snack_name
GROUP BY s.snack_name, s.snack_price
ORDER BY s.snack_name;