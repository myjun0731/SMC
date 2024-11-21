--2024-11-13 ���� 1. ��Ʈ
--���ϸ� : StudentMathKoreanScoreAvgAndCountList
--�й�, ���� ���� ���, ���� & ���� ���, ���� ���� �� Ƚ�� + ���� ���� �� Ƚ��, ���� �� Ƚ��
--��Ī : �й�, �����������, ���б������, ���б�����躻Ƚ��, ���躻Ƚ��
--+ �й��� �������� ��������

SELECT st.student_id AS �й�, 
TRUNC(SUM(t.math) / COUNT(t.math), 0) AS �����������,
TRUNC(SUM(t.math + t.korean) / (COUNT(t.math) + COUNT(t.korean)), 0) AS ���б������,
TRUNC((COUNT(t.math) + COUNT(t.korean)), 0) AS ���б�����躻Ƚ��,
COUNT(t.student_id) AS ���躻Ƚ��
FROM student st, test t
WHERE st.student_id = t.student_id
GROUP BY st.student_id
ORDER BY st.student_id;