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

select t.member_id m.member_name, to_char(sum(f.price), '999,999') || '원'
from member m, take_out t, food f
where m.member_id, = t.member_id and f.food_name = t.food_name
group by m,member_id, m.member_name
order by t.member_id;

select f.food_name, to_char(sum(f.price), '999,999')
from food f, take_out t
where f.food_name = t.food_name;