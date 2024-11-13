create table person  (
person_name varchar2(500) not null primary key,
birth_date date,
blood_type char(2)
);

create table student (
student_name varchar2(500) not null primary key,
tudent_num number(5),
school_name varchar2(500)
);

insert into person values('종찬','2006-10-09','A');
insert into person values('찬미','2005-02-06','O');
insert into person values('명준','2007-07-31','A');

insert into student values('종찬', 30302, '상일미디어고등학교');

select p.person_name, to_char(p.birth_date,'YYYY-MM-DD'), p.blood_type,
case
when s.school_name is not null then s.school_name
else '졸업' end
from person p left outer join student s
on p.person_name = s.school_name;

select p.person_name, to_char(p.birth_date, 'YYYY-MM-DD'), p.blood_type, 
NVL(s.school_name, '졸업')
from person p left outer join student s
on p.person_name = s.student_name;

==============
select m.member_id, member_name,
case
when sum(f.price) > 0 then to_char(sum(f.price),'999,999')
else '0' end
from member m left outer join take_out t
on m.memder_id = t.member_id
left outer join food f
on t.food_name = f.food_name
group by m.member_id, m.memder_name
order by m.member_id;

select m.member_id, m.member_name,
to_char((nvl(sumf.price),0),'999,999')
from member m left outer join take_out t
on m.member_id = t.member_id
left outer join food f
on t.food_name = f.food_name
group by m.member_id, m.member)name
order by m.member_id;