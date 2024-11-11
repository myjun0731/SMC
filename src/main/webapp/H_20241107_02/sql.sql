create table tbl_mento (
mento_id char(4) not null primary key,
mento_name varchar(20)
);

insert into tbl_mento values('j001','함멘토');
insert into tbl_mento values('j002','박멘토');
insert into tbl_mento values('j003','장멘토');

create table TBL_ARTIST(
ARTIST_id char(4) not null primary key,
ARTIST_name varchar(20),
birth char(8),
gender char(1),
talent char(1),
agency varchar(30)
);

insert into TBL_ARTIST values('A001','김스타','19970101','F','1','A엔터테이먼트');
insert into TBL_ARTIST values('A002','조스타','19980201','M','2','B엔터테이먼트');
insert into TBL_ARTIST values('A003','왕스타','19900301','M','3','C엔터테이먼트');
insert into TBL_ARTIST values('A004','정스타','20000401','M','1','D엔터테이먼트');
insert into TBL_ARTIST values('A005','홍스타','20010501','F','2','E엔터테이먼트');

create table tbl_point(
serial_no number(8) not null primary key,
artist_id char(4),
mento_id char(4),
score number(3),
foreign key(artist_id) REFERENCES tbl_mento(mento_id)
);
insert into tbl_point values('2019001','A001','J001','78');
insert into tbl_point values('2019002','A001','J002','76');
insert into tbl_point values('2019003','A001','J003','70');
insert into tbl_point values('2019004','A002','J001','80');
insert into tbl_point values('2019005','A002','J002','72');
insert into tbl_point values('2019006','A002','J003','78');
insert into tbl_point values('2019007','A003','J001','90');
insert into tbl_point values('2019008','A003','J002','92');
insert into tbl_point values('2019009','A003','J003','88');
insert into tbl_point values('2019010','A004','J001','96');
insert into tbl_point values('2019011','A004','J002','90');
insert into tbl_point values('2019012','A004','J003','98');
insert into tbl_point values('2019012','A005','J001','88');
insert into tbl_point values('2019012','A005','J002','86');
insert into tbl_point values('2019012','A005','J003','86');

