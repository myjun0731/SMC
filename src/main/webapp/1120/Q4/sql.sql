--���� 4. ������ ���� ���� �湮�� Ƚ�� ���ϱ�
--(���ϸ� : GetSnackList_BloodType)
--+ ������, �湮Ƚ��

SELECT p.blood_type as ������, COUNT(*) AS �湮Ƚ��
FROM person p, get_snack gs, student st
where p.person_name = st.person_name and st.student_id = gs.student_id
GROUP BY p.blood_type;