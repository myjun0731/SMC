create table member(
member_id varchar(500) primary key,
member_name varchar2(500),
grade char(1),
joindate date
);

create table food (
food_name varchar2(500) primary key
);

create table open_movie (
open_movie_name varchar2(500) primary key
);

create table reserve_movie (
reserve_id number(10) primary key,
member_id varchar2(500),
food_name varchar2(500),
open_movie_name varchar2(500),
foreign key (member_id) references member (member_id) on delete cascade,
foreign key (food_name) references food (food_name) on delete cascade,
foreign key (open_movie_name) references open_movie (open_movie_name) on delete cascade
);


insert into member values('chanmt', '박찬미','C',to_date('2024-10-29', 'YYYY-MM-DD'));
insert into member values('test', '테스트','A',to_date('2024-10-29', 'YYYY-MM-DD'));

insert into food values('핫도그');
insert into food values('카라멜 팝콘');
insert into food values('오리지널 팝콘');
insert into food values('칠리치즈 나쵸');

insert into open_movie values('타이타닉');
insert into open_movie values('인셉션');
insert into open_movie values('범죄도시2');

insert into reserve_movie values(1, 'chanmt', '카라멜 팝콘', '타이타닉');
insert into reserve_movie values(2, 'test', '핫도그', '인셉션');