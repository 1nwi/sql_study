

SELECT SYSTIMESTAMP FROM dual;

-- 테이블 생성(회원정보:아이디,비밀번호,이름,성별,나이)
CREATE TABLE tbl_member(
   account VARCHAR2(20)PRIMARY KEY
   ,password VARCHAR2(200)NOT NULL
   ,username VARCHAR2(50)NOT NULL
   ,gender CHAR(2)
   ,age NUMBER(3)
);

SELECT * FROM tbl_member;


--데이터 삽임(INSERT문)
INSERT INTO tbl_member
  (account,password,username,gender,age)
VALUES
  ('abc1234','vvv1234!!','김철수','M',30);
  
INSERT INTO tbl_member
  (account,password,username,gender,age)
VALUES
  ('def5678','aaa5678!!','홍길동','F',26);
  
INSERT INTO tbl_member
  (account,password,username,gender)
VALUES
  ('ghi1234','qqq332!!','고길동','F');
  
INSERT INTO tbl_member
  
VALUES
  ('zzz1234','ghdgh344!!','김영희','F',22);

--데이터 수정(UPDATE)
UPDATE tbl_member
SET gender = 'M',age=45
WHERE account = 'ghi1234';

UPDATE tbl_member
SET password = 'babo1234!'
WHERE account = 'abc1234';

--데이터 삭제(DELETE)
DELETE FROM tbl_member
WHERE account = 'abc1234';

SELECT * FROM tbl_member;

--데이터 조회(SELECT)
SELECT account,username,age
FROM tbl_member;

SELECT age,gender,username
FROM tbl_member;

SELECT *
FROM tbl_member;

SELECT *
FROM tbl_member
WHERE gender='F';

SELECT account,username,age
FROM tbl_member
WHERE age >= 30;

SELECT *
FROM tbl_member
WHERE username LIKE '%영%'
    AND age >= 20;





