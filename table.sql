DROP TABLE MEMBER;

CREATE TABLE MEMBER(
	memId VARCHAR(15) PRIMARY KEY,
	memPw VARCHAR(20),
	memName VARCHAR(30),
	memMail VARCHAR(20),
	memMail2 VARCHAR(20),
	memPhone1 VARCHAR(3),
	memPhone2 VARCHAR(4),
	memPhone3 VARCHAR(4),
	memGender VARCHAR(10),
	memAddNum VARCHAR(10),
	memAddress VARCHAR(50),
	memAddress2 VARCHAR(50),
	memAddPlus VARCHAR(50)
);



SELECT * FROM MEMBER;

COMMIT