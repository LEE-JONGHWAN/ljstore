

CREATE DATABASE `ljstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

GRANT Alter ON ljstore.* TO 'myself'@'localhost';
GRANT Create ON ljstore.* TO 'myself'@'localhost';
GRANT Create view ON ljstore.* TO 'myself'@'localhost';
GRANT Delete ON ljstore.* TO 'myself'@'localhost';
GRANT Delete history ON ljstore.* TO 'myself'@'localhost';
GRANT Drop ON ljstore.* TO 'myself'@'localhost';
GRANT Grant option ON ljstore.* TO 'myself'@'localhost';
GRANT Index ON ljstore.* TO 'myself'@'localhost';
GRANT Insert ON ljstore.* TO 'myself'@'localhost';
GRANT References ON ljstore.* TO 'myself'@'localhost';
GRANT Select ON ljstore.* TO 'myself'@'localhost';
GRANT Show view ON ljstore.* TO 'myself'@'localhost';
GRANT Trigger ON ljstore.* TO 'myself'@'localhost';
GRANT Update ON ljstore.* TO 'myself'@'localhost';
GRANT Alter routine ON ljstore.* TO 'myself'@'localhost';
GRANT Create routine ON ljstore.* TO 'myself'@'localhost';
GRANT Execute ON ljstore.* TO 'myself'@'localhost';

CREATE USER 'result'@'localhost' IDENTIFIED BY '1234';

GRANT Alter ON ljstore.* TO 'result'@'localhost';
GRANT Create ON ljstore.* TO 'result'@'localhost';
GRANT Create view ON ljstore.* TO 'result'@'localhost';
GRANT Delete ON ljstore.* TO 'result'@'localhost';
GRANT Delete history ON ljstore.* TO 'result'@'localhost';
GRANT Drop ON ljstore.* TO 'result'@'localhost';
GRANT Grant option ON ljstore.* TO 'result'@'localhost';
GRANT Index ON ljstore.* TO 'result'@'localhost';
GRANT Insert ON ljstore.* TO 'result'@'localhost';
GRANT References ON ljstore.* TO 'result'@'localhost';
GRANT Select ON ljstore.* TO 'result'@'localhost';
GRANT Show view ON ljstore.* TO 'result'@'localhost';
GRANT Trigger ON ljstore.* TO 'result'@'localhost';
GRANT Update ON ljstore.* TO 'result'@'localhost';
GRANT Alter routine ON ljstore.* TO 'result'@'localhost';
GRANT Create routine ON ljstore.* TO 'result'@'localhost';
GRANT Execute ON ljstore.* TO 'result'@'localhost';

CREATE TABLE ljstore.usr (
	usrno INT(11) NOT NULL,
	usrid varchar(20) NOT NULL COMMENT '회원아이디',
	usrpw varchar(100) NOT NULL COMMENT '회원비밀번호',
	usrname varchar(30) NOT NULL COMMENT '회원이름',
	usraddr varchar(100) NOT NULL COMMENT '회원주소',
	usrmail varchar(20) NULL COMMENT '회원 이메일',
	usrsp varchar(20) NOT NULL COMMENT '회원 핸드폰번호',
	usrms enum('O','X') DEFAULT 'X' NOT NULL COMMENT '관리자 권한',
	usravail enum('0','1') DEFAULT '0' NOT NULL COMMENT '삭제여부',
	cagono int(11) NOT NULL,
	sellno int(11) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
