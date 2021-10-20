USE testing_system2;
-- Hiển thị danh sách tất cả phòng ban
SELECT * -- * là biểu thị ALL tất cả trong danh sách
FROM department;
-- Hiển thị danh sách tên của các phòng ban
SELECT department_name
FROM department;

-- Hiển thị danh sách tất cả các nhân viên trong công ty
SELECT *
FROM	account;
-- Hiển thị danh sách thông tin nhân viên: mã nhân viên, tên nhân viên, email
SELECT account_id,fullname,email
FROM account;

SELECT *
FROM `account`
WHERE account_id =1;

-- Hiển thị thông tin nhân viên thuộc phòng ban 1
SELECT *
FROM `account`
WHERE department_id=1  AND position_id = 2;

SELECT *
FROM `account`
WHERE department_id=1  OR position_id = 5;

SELECT *
FROM `account`
WHERE department_id=1  OR position_id = 5 AND username = 'bao.lengoc98';
--        1				+		 0		.  *			1	
--        1              +                  0
--       =1 of department
SELECT *
FROM `account`
WHERE (department_id=3  OR position_id=4)  AND username = 'thinh.ithp'; -- tại sao cho accountid hoặc email lại ko ra kết quả mà cho username lại re kết quả

SELECT *
FROM `account`
WHERE department_id=3  OR (position_id=4  AND username = 'thinh.ithp');
	--  	1			+		1 			*			1. = 1

-- Cách	1
SELECT *
FROM `account`
WHERE account_id	BETWEEN 3 AND 7;

-- cách 2
SELECT *
FROM `account`
WHERE account_id	>=3 AND account_id <=7;

-- IN/NOTIN
SELECT *
FROM `account`
WHERE department_id	NOT IN (1,4) AND position_id NOT IN (2,5) ;

SELECT *
FROM `account`
WHERE email	NOT IN ('Starlee9009@gmail.com','thinh.ithp@gmail.com');

SELECT *
FROM `account`
WHERE email IN ('Starlee9009@gmail.com','thinh.ithp@gmail.com') OR department_id = 4  LIKE 'thinh%';
-- Để. như thế này có ý nghĩa gì không ?

-- LIKE /NOTLIKE

SELECT *
FROM `account`
WHERE fullname	LIKE '%Liên';

SELECT *
FROM `account`
WHERE fullname	NOT LIKE ('%Liên');

SELECT *
FROM `account`
WHERE fullname	IS NOT NULL ;

SELECT   DISTINCT department_id
FROM `account`;

SELECT count(*)
FROM `account`
WHERE email;

SELECT department_id, count(account_id)
From `account`
GROUP BY department_id;

SELECT department_id, count(account_id)
From `account`
WHERE username NOT IN ('thinh.ithp')
GROUP BY account_id;

-- tại sao lại chọn không ra ?

