create table tbl_member(
custno number(6) not null primary key,
custname varchar2(20),
phone varchar2(13),
address varchar2(60),
joindate date,
grade char(1),
city char(2)
);

create table tbl_money(
custno number(6) not null,
salenol number(8) not null,
pcost number(8),
amount number(4),
price number(8),
pcode varchar2(4),
state date,
primary key(custno, salenol)
);

insert into tbl_member
values (100001, '���ູ', '010-1111-2222', '���� ���빮�� �ְ�1��', '20200102', 'A', '10');
insert into tbl_member
values (100002, '���ູ', '010-1111-3333', '���� ���빮�� �ְ�2��', '20200103', 'B', '10');
insert into tbl_member
values (100003, '�����', '010-1111-4444', '�︪�� �︪�� ����1��', '20200104', 'B', '30');
insert into tbl_member
values (100004, '�ֻ��', '010-1111-5555', '�︪�� �︪�� ����2��', '20200105', 'A', '30');
insert into tbl_member
values (100005, '����ȭ', '010-1111-6666', '���ֵ� ���ֽ� �ܳ�����', '20200106', 'B', '60');
insert into tbl_member
values (100006, '������', '010-1111-7777', '���ֵ� ���ֽ� ��������', '20200107', 'C', '60');

insert into tbl_money
values (100001,    20160001,    500,      5,   2500,   'A001',   '20160101');
insert into tbl_money
values (100001,    20160002,    1000,   4,   4000,   'A002',   '20160101');
insert into tbl_money
values (100001,       20160003,    500,      3,   1500,   'A008',   '20160101');
insert into tbl_money
values (100002,    20160004,    2000,   1,   2000,   'A004',   '20160102');
insert into tbl_money
values (100002,    20160005,    500,      1,   500,      'A001',   '20160103');
insert into tbl_money
values (100003,    20160006,    1500,   2,   3000,   'A003',   '20160103');
insert into tbl_money
values (100004,    20160007,    500,      2,   1000,   'A001',   '20160104');
insert into tbl_money
values (100004,    20160008,    300,      1,   300,      'A005',   '20160104');
insert into tbl_money
values (100004,    20160009,    600,      1,   600,      'A006',   '20160104');
insert into tbl_money
values (100004,    20160010,    3000,   1,   3000,   'A007',   '20160106');

select * from tbl_money;
select * from tbl_member;