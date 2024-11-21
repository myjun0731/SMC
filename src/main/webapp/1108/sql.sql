create sequence seq_text_input
increment by 1
start with 1
minvalue 1
nocycle
nocache
noorder;

create table text_input(
text_input_id number,
member_id varchar2(250),
contents varchar2(500)
);
insert into text_input values(seq_text_input.nextval,'chanmi','하하하');

delete from text_input where text_input_id = 1;

insert into text_input values(seq_text_input.nextval,'chanmi','text');

select text_input_id, member_id, contents from text_input;

update text_input set member_id = 'chanmi', contents ='text2' where text_input_id=2;