create table language(
korea varchar2(500),
english varchar2(500),
num number
);

select korea from language order by korea;
select num from language order by num desc;

INSERT INTO language VALUES('고양이', 'application', 1);
INSERT INTO language VALUES('공부', 'rollback', 2);
INSERT INTO language VALUES('기억', 'commit', 3);
INSERT INTO language VALUES('귤', 'checkbox', 4);

INSERT INTO language VALUES('고래', 'radio', 5);
INSERT INTO language VALUES('나무', 'html', 6);
INSERT INTO language VALUES('노래', 'type', 7);
INSERT INTO language VALUES('냉장고', 'orderby', 8);
INSERT INTO language VALUES('하늘', 'insert', 9);

INSERT INTO language VALUES('행복', 'delete', 10);
INSERT INTO language VALUES('하루', 'update', 11);
INSERT INTO language VALUES('해변', 'select', 12);
INSERT INTO language VALUES('희망', 'drop', 13);