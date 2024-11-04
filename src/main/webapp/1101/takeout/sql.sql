create table member(
member_id varchar2(500) not null primary key,
member_name varchar2(500)
);

create table food(
food_name varchar2(500) not null primary key,
price number
);

create table take_out(
take_out_id number not null primary key,
member_id varchar2(500),
food_name varchar2(500),
foreign key (member_id) references member (member_id) on delete cascade,
foreign key (food_name) references food (food_name) on delete cascade
);

select t.member_id, m.member_name, to_char(sum(f.price), '999,999') || '원'
from member m, take_out t, food f
where m.member_id = t.member_id and f.food_name = t.food_name
group by t.member_id, m.member_name
order by t.member_id;

select f.food_name, to_char(sum(f.price), '999,999')
from food f, take_out t
where f.food_name = t.food_name
group by f.food_name;



select member_id, member_name
from member
where member_name like '%고%';

select distinct m.member_id, m.member_name
from member m, food f, take_out t
where m.member_id = t.member_id
and f.food_name = t.food_name order by m.member_id;

select f.food_name, to_char(sum(f.price), '999,999')|| '원'
from food f, take_out t
where f.food_name = t.food_name
group by f.food_name
having sum(f.price) between 40000 and 50000;

select m.member_id,
m.member_name,
to_char(sum(f.price), '999,999') || '원',
count(t.member_id),
to_char(round(sum(f.price)/count(t.member_id),0),'999,999') as avg
from member m, food f, take_out t
where m.member_id = t.member_id and f.food_name = t.food_name
group by m.member_id, m.member_name;
============================
select m.member_id, m.member_name,
case
when sum(f.price) > 0 then to_char(sum(f.price),'999,999')
else '0' end
from member m left outer join take_out t
on m.member_id = t.member_id
left outer join food f
on t.food_name = f.food_name
group by m.member_id, m.member_name
order by m.member_id;

select m.member_id, m.member_name,
to_char(nvl(sum(f.price),0),'999,999')
from member m left outer join take_out t
on m.member_id = t.member_id
left outer join food f
on t.food_name = f.food_name
group by m.member_id, m.member_name
order by m.member_id;