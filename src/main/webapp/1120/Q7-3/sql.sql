--2024-11-20 ���� 3.
--���� �����ϴ� ���� ��ȣ���� ���� ���ϱ�
--���ϸ� : ILikeSnackAndSnackRankList
--��Ī : �����̸�, ���İ���, ��ȣ��, �Ѹ���, �������
--
--+ �����̸��� �������� ��������

select
s.snack_name as �����̸�,
s.snack_price as ���İ���,
CASE
WHEN SUM(s.snack_price * gs.amount) >= 25000 THEN '����'
WHEN SUM(s.snack_price * gs.amount) >= 20000 THEN '����'
WHEN SUM(s.snack_price * gs.amount) >= 15000 THEN '����'
WHEN SUM(s.snack_price * gs.amount) >= 10000 THEN '�־�'
else '������ ��'
END AS ��ȣ��,
TO_CHAR(SUM(s.snack_price * gs.amount), '999,999') AS �Ѹ���,
RANK() OVER (ORDER BY SUM(s.snack_price * gs.amount)DESC) AS �������
from snack s, get_snack gs
where s.snack_name = gs.snack_name
group by s.snack_name, s.snack_price
order by s.snack_name;