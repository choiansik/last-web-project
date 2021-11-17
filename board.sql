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

COMMENT ON table board is '게시판';
comment on column board.bbsDid is '일련번호';
comment on column board.bbsTitle is '제목';
comment on column board.bbsContent is '게시글';
comment on column board.bbsTag is '태그';
comment on column board.bbsCnt is '카운트';
comment on column board.bbsId is '작성자';
comment on column board.bbsDt is '작성일';
comment on column board.bbsEdit is '수정일';
	


SELECT * FROM board;
SELECT * FROM ALL_COL_COMMENTS WHERE TABLE_NAME = 'board';



COMMIT