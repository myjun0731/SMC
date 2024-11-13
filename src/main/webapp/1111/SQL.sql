create table tbl_goods_01(
goods_cd varchar2(6) not null primary key,
goods_nm varchar2(30),
goods_price number(8),
cost number(8),
in_date date
);

insert into tbl_goods_01 values('110001','라면',1050,750, to_date('20190302','YYYYMMDD'));
insert into tbl_goods_01 values('110002','빵',1300,800, to_date('20190302','YYYYMMDD'));
insert into tbl_goods_01 values('110003','과자',2000,1700, to_date('20190302','YYYYMMDD'));
insert into tbl_goods_01 values('110004','탄산음료',900,750, to_date('20190302','YYYYMMDD'));
insert into tbl_goods_01 values('110005','삼각김밥',750,300, to_date('20190302','YYYYMMDD'));
insert into tbl_goods_01 values('110006','초콜릿',1500,1300, to_date('20190302','YYYYMMDD'));
insert into tbl_goods_01 values('110007','우류',850,600, to_date('20190302','YYYYMMDD'));

create table store_tbl_003(
store_cd varchar2(5) not null primary key,
store_nm varchar2(20)
goods_fg number(1)
);

insert into store_tbl_003 values('A001','이태원점','0');
insert into store_tbl_003 values('A002','한남점','0');
insert into store_tbl_003 values('A003','도원점','0');
insert into store_tbl_003 values('B001','혜화점','1');
insert into store_tbl_003 values('C001','방배점','1');
insert into store_tbl_003 values('D001','사당점','0');
insert into store_tbl_003 values('D002','흑석점','1');
insert into store_tbl_003 values('E001','금호점','0');



create table sale_tbl_003 (
sale_no varchar2(4) not null primary key,
sale_ymd date not null,
sale_fg varchar2(1) not null,
store_cd varchar2(5) not null,
goods_cd varchar2(6),
sale_cnt number(3),
pay_type varchar2(2),
constraint store_cd_fk foreign key(store_cd)
References store_tbl_003(store_cd),
constraint goods_cd_fk foreign key(goods_cd)
References tbl_goods_01(goods_cd)
);


insert into sale_tbl_003 values('0001',to_date('20190325','YYYYMMDD'),'1','A001','110001',2,'02');
insert into sale_tbl_003 values('0002',to_date('20190325','YYYYMMDD'),'1','B001','110003',2,'02');
insert into sale_tbl_003 values('0003',to_date('20190325','YYYYMMDD'),'1','D001','110003',1,'01');
insert into sale_tbl_003 values('0004',to_date('20190325','YYYYMMDD'),'1','A001','110006',5,'02');
insert into sale_tbl_003 values('0005',to_date('20190325','YYYYMMDD'),'1','C001','110003',2,'02');
insert into sale_tbl_003 values('0006',to_date('20190325','YYYYMMDD'),'2','C001','110003',2,'02');
insert into sale_tbl_003 values('0007',to_date('20190325','YYYYMMDD'),'1','A002','110005',4,'02');
insert into sale_tbl_003 values('0008',to_date('20190325','YYYYMMDD'),'1','A003','110004',4,'02');
insert into sale_tbl_003 values('0009',to_date('20190325','YYYYMMDD'),'1','B001','110001',2,'01');
insert into sale_tbl_003 values('0010',to_date('20190325','YYYYMMDD'),'1','A002','110006',1,'02');


select to_char(max(goods_cd)+1,'FM000000'), to_char(sysdate, 'YYYY-MM-DD') from tbl_goods_01;

select goods_cd, goods_nm, to_char(goods_price, 'L999,999'),
to_char(cost,'L999,999'), to_char(in_date,'YYYY-MM-DD') from tbl_goods_01;

select to_char(goods_cd, 'FM000000'),
goods_nm, goods_price, cost, to_char(in_date,'YYYY-MM-DD') from tbl_goods_01 where goods_cd = '110001';

select to_char(max(sale_cnt) +1, 'FM0000'), to_char(sysdate, 'YYYYMMDD') from sale_tbl_003;

select st.store_cd, st.store_nm,
to_char(NVl(sum(decode(sa.pay_type,'01', sa.sale_cnt, null,0)*g.goods_price),0),'999,999') || '원' as 현금매출,
to_char(NVl(sum(decode(sa.pay_type,'02', sa.sale_cnt, null,0)*g.goods_price),0),'999,999') || '원' as 카드매출,
to_char(sum(sa.sale_cnt * g.goods_price),'999,999') || '원' as 총매출
from sale_tbl_003 sa, store_tbl_003 st, tbl_goods_01 g
where sa.store_cd = st.store_cd and sa.goods_cd = g.goods_cd
group by st.store_cd, st.store_nm
order by 총매출 DESC;

select decode(sa.sale_fg,'1','핀매', '2', '판매취소'), sa.sale_no,
to_char(sa.sale_ymd, 'YYYY-MM-DD'), st.store_nm,
sa.sale_cnt,
to_char(g.goods_price * sa.sale_cnt, '999,999') || '원',
decode(sa.pay_type,'01','현금','02','카드')
from sale_tbl_003 sa, store_tbl_003 st, tbl_goods_01 g
where sa.store_cd = st.store_cd and sa.goods_cd = g.goods_cd and sa.store_cd = 'A001';