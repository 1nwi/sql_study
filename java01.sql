

SELECT SYSTIMESTAMP FROM dual;

-- ���̺� ����(ȸ������:���̵�,��й�ȣ,�̸�,����,����)
CREATE TABLE tbl_member(
   account VARCHAR2(20)PRIMARY KEY
   ,password VARCHAR2(200)NOT NULL
   ,username VARCHAR2(50)NOT NULL
   ,gender CHAR(2)
   ,age NUMBER(3)
);

SELECT * FROM tbl_member;


--������ ����(INSERT��)
INSERT INTO tbl_member
  (account,password,username,gender,age)
VALUES
  ('abc1234','vvv1234!!','��ö��','M',30);
  
INSERT INTO tbl_member
  (account,password,username,gender,age)
VALUES
  ('def5678','aaa5678!!','ȫ�浿','F',26);
  
INSERT INTO tbl_member
  (account,password,username,gender)
VALUES
  ('ghi1234','qqq332!!','��浿','F');
  
INSERT INTO tbl_member
  
VALUES
  ('zzz1234','ghdgh344!!','�迵��','F',22);

--������ ����(UPDATE)
UPDATE tbl_member
SET gender = 'M',age=45
WHERE account = 'ghi1234';

UPDATE tbl_member
SET password = 'babo1234!'
WHERE account = 'abc1234';

--������ ����(DELETE)
DELETE FROM tbl_member
WHERE account = 'abc1234';

SELECT * FROM tbl_member;

--������ ��ȸ(SELECT)
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
WHERE username LIKE '%��%'
    AND age >= 20;





