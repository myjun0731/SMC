--2024-11-20 과제 3.
--내가 생각하는 간식 선호도와 매출 비교하기
--파일명 : ILikeSnackAndSnackRankList
--별칭 : 간식이름, 간식가격, 선호도, 총매출, 매출순위
--
--+ 간식이름을 기준으로 오름차순

select
s.snack_name as 간식이름,
s.snack_price as 간식가격,
CASE
WHEN SUM(s.snack_price * gs.amount) >= 25000 THEN '좋음'
WHEN SUM(s.snack_price * gs.amount) >= 20000 THEN '보통'
WHEN SUM(s.snack_price * gs.amount) >= 15000 THEN '별로'
WHEN SUM(s.snack_price * gs.amount) >= 10000 THEN '최악'
else '먹을만 함'
END AS 선호도,
TO_CHAR(SUM(s.snack_price * gs.amount), '999,999') AS 총매출,
RANK() OVER (ORDER BY SUM(s.snack_price * gs.amount)DESC) AS 매출순위
from snack s, get_snack gs
where s.snack_name = gs.snack_name
group by s.snack_name, s.snack_price
order by s.snack_name;