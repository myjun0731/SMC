--2024-11-18 ���� 1. ��Ʈ
--���ϸ� : GetSnackAllList
--���� �Ѹ��� ���
--�����̸�, ����, ������ ���ŵ� ����, �Ѹ���
--��Ī : �����̸�, ���İ���, ���ŵȼ���, �Ѹ���
--+ ���� �̸��� �������� ��������

SELECT s.snack_name AS �����̸�, 
TO_CHAR(s.snack_price, '999,999') AS ���İ���,
SUM(gs.amount) AS ���ŵȼ���, 
TO_CHAR(SUM(s.snack_price * gs.amount), '999,999') AS �Ѹ���
FROM snack s, get_snack gs
WHERE s.snack_name = gs.snack_name
GROUP BY s.snack_name, s.snack_price
ORDER BY s.snack_name;