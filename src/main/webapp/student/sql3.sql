create table food (
food_name varchar2(500) primary key,
food_price number
);

insert into food values('김치찌개', 8000);
insert into food values('불고기', 120000);
insert into food values('비빔밥', 10000);

select food_name, to_char(food_price, '999,999') || '원' from food;