--���� 2 ���� �湮�� Ƚ��

select gs.student_id as �й�, count(gs.student_id) || '��' as ����湮��Ƚ��
from get_snack gs
group by gs.student_id;