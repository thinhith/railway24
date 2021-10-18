-- quy tắc đặt tên:
-- 1. tên database, tên bảng, tên cột phải là danh từ
-- tên các thư mục tên sẽ viêt thường..
DROP DATABASE IF EXISTS testing_system; -- xoá khởi tạo database
CREATE DATABASE testing_system; -- Khởi tạo database
USE testing_system; -- chỉ định database
-- Tạo bảng
CREATE TABLE department(
	department_id		INT,
    department_name		VARCHAR(50)
);
CREATE TABLE `position`(
	position_id			INT,
    position_name		VARCHAR(50)
);
CREATE TABLE `account`(
	account_id			INT,
    email				VARCHAR(50),
    username			VARCHAR(50),
    fullname			VARCHAR(50),
    department_id		INT,
    position_id			INT,
    create_date			DATE
);
CREATE TABLE `group`(
	group_id			INT,
    group_name			VARCHAR(50),
    creator_id			INT,
    create_date			DATE
);
CREATE TABLE groupaccount(
	group_id			INT,
    account_id			INT,
    join_date			DATE
);
CREATE TABLE typequestion (
	type_id				int,
    type_name			VARCHAR(50)
);
CREATE TABLE categoryquestion (
	category_id			int,
    category_name		VARCHAR(50)
);
CREATE TABLE question (
	questionid			int,
    content				VARCHAR(50),
    category_id			INT,
    type_id				INT,
    creator_id			INT,
    createdate			DATE
);
CREATE TABLE answer (
	answer_id			INT,
    content				VARCHAR(50),
    questionid			INT,
    iscorrect			VARCHAR(5)
);
CREATE TABLE exam (
	exam_id				INT,
    `code`				INT,
    tittle				VARCHAR(50),
    category_id			VARCHAR(50),
    createdate			DATE
);
CREATE TABLE examquestion (
	exam_id				INT,
    question_id			INT
);