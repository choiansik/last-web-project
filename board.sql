DROP TABLE board;

CREATE TABLE board(
	bbsDid NUMBER(15) not null PRIMARY KEY ,
	bbsCate VARCHAR(20) not null,
    bbsTitle VARCHAR(200) not null,
    bbsContent LONG not null,
    bbsTag VARCHAR(1000) null,
    bbsCnt NUMBER DEFAULT 0 ,
    bbsId VARCHAR(45) not null,
    bbsDt DATE,
    bbsEdit DATE
);

COMMENT ON table board is '�Խ���';
comment on column board.bbsDid is '�Ϸù�ȣ';
comment on column board.bbsTitle is '����';
comment on column board.bbsContent is '�Խñ�';
comment on column board.bbsTag is '�±�';
comment on column board.bbsCnt is 'ī��Ʈ';
comment on column board.bbsId is '�ۼ���';
comment on column board.bbsDt is '�ۼ���';
comment on column board.bbsEdit is '������';
	


SELECT * FROM board;
SELECT * FROM ALL_COL_COMMENTS WHERE TABLE_NAME = 'board';



COMMIT